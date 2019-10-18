import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.BufferedReader;

import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.HttpStatus;
import org.apache.http.util.EntityUtils;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONObject;
import org.json.JSONArray;
import org.json.JSONTokener;
import org.json.JSONException;

public class Main {

    static final String USERNAME = "yourusername";
    static final String PASSWORD = "password+secrettoken";
    static final String LOGINURL = "https://login.salesforce.com";
    static final String GRANTSERVICE = "/services/oauth2/token?grant_type=password";
    static final String CLIENTID = "id";
    static final String CLIENTSECRET = "secret";
    private static String REST_ENDPOINT = "/services/data";
    private static String API_VERSION = "/v32.0";
    private static String baseUri;
    private static Header oauthHeader;
    private static Header prettyPrintHeader = new BasicHeader("X-PrettyPrint", "1");
    private static String leadId;
    private static String leadFirstName;
    private static String leadLastName;
    private static String leadCompany;

    public static void main(String[] args) {

        HttpClient httpclient = HttpClientBuilder.create().build();

        // Assemble the login request URL
        String loginURL = LOGINURL +
                GRANTSERVICE +
                "&client_id=" + CLIENTID +
                "&client_secret=" + CLIENTSECRET +
                "&username=" + USERNAME +
                "&password=" + PASSWORD;

        // Login requests must be POSTs
        HttpPost httpPost = new HttpPost(loginURL);
        HttpResponse response = null;

        try {
            // Execute the login POST request
            response = httpclient.execute(httpPost);
        } catch (ClientProtocolException cpException) {
            cpException.printStackTrace();
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }

        // verify response is HTTP OK
        final int statusCode = response.getStatusLine().getStatusCode();
        if (statusCode != HttpStatus.SC_OK) {
            System.out.println("Error authenticating" + statusCode);
            // Error is in EntityUtils.toString(response.getEntity())
            return;
        }

        String getResult = null;
        try {
            getResult = EntityUtils.toString(response.getEntity());
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }

        JSONObject jsonObject = null;
        String loginAccessToken = null;
        String loginInstanceUrl = null;

        try {
            jsonObject = (JSONObject) new JSONTokener(getResult).nextValue();
            loginAccessToken = jsonObject.getString("access_token");
            loginInstanceUrl = jsonObject.getString("instance_url");
        } catch (JSONException jsonException) {
            jsonException.printStackTrace();
        }

        baseUri = loginInstanceUrl + REST_ENDPOINT + API_VERSION;
        oauthHeader = new BasicHeader("Authorization", "OAuth " + loginAccessToken);
        System.out.println("oauthHeader1: " + oauthHeader);
        System.out.println("\n" + response.getStatusLine());
        System.out.println("Successful login");
        System.out.println("instance URL: " + loginInstanceUrl);
        System.out.println("access token/session ID: " + loginAccessToken);
        System.out.println("baseUri: " + baseUri);

        // Run codes to query and insert records in Salesforce using REST API
        queryLeads();
        createLeads();

        // release connection
        httpPost.releaseConnection();
    }

    // Query Leads using REST HttpGet
    public static void queryLeads() {
        System.out.println("\n_______________ Lead QUERY _______________");
        try {

            //Set up the HTTP objects needed to make the request.
            HttpClient httpClient = HttpClientBuilder.create().build();

            String uri = baseUri + "/query?q=Select+Id+,+FirstName+,+LastName+,+Company+From+Lead+Limit+5";
            System.out.println("Query URL: " + uri);
            HttpGet httpGet = new HttpGet(uri);
            System.out.println("oauthHeader2: " + oauthHeader);
            httpGet.addHeader(oauthHeader);
            httpGet.addHeader(prettyPrintHeader);

            // Make the request.
            HttpResponse response = httpClient.execute(httpGet);

            // Process the result
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode == 200) {
                String response_string = EntityUtils.toString(response.getEntity());
                try {
                    JSONObject json = new JSONObject(response_string);
                    System.out.println("JSON result of Query:\n" + json.toString(1));
                    JSONArray j = json.getJSONArray("records");
                    for (int i = 0; i < j.length(); i++) {
                        leadId = json.getJSONArray("records").getJSONObject(i).getString("Id");
                        leadFirstName = json.getJSONArray("records").getJSONObject(i).getString("FirstName");
                        leadLastName = json.getJSONArray("records").getJSONObject(i).getString("LastName");
                        leadCompany = json.getJSONArray("records").getJSONObject(i).getString("Company");
                        System.out.println("Lead record is: " + i + ". " + leadId + " " + leadFirstName + " " + leadLastName + "(" + leadCompany + ")");
                    }
                } catch (JSONException je) {
                    je.printStackTrace();
                }
            } else {
                System.out.println("Query was unsuccessful. Status code returned is " + statusCode);
                System.out.println("An error has occured. Http status: " + response.getStatusLine().getStatusCode());
                //System.out.println(getBody(response.getEntity().getContent()));
                System.exit(-1);
            }
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (NullPointerException npe) {
            npe.printStackTrace();
        }
    }

    //Create Leads using REST HttpPost
    public static void createLeads() {
        System.out.println("\n_______________ Lead INSERT _______________");

        String uri = baseUri + "/sobjects/Lead/";
        try {

            //create the JSON object containing the new lead details.
            JSONObject lead = new JSONObject();
            lead.put("FirstName", "John");
            lead.put("LastName", "Doe");
            lead.put("Company", "Poder");
            lead.put("Phone", "123-456-7890");


            System.out.println("JSON for lead record to be inserted:\n" + lead.toString(1));

            //Construct the objects needed for the request
            HttpClient httpClient = HttpClientBuilder.create().build();

            HttpPost httpPost = new HttpPost(uri);
            httpPost.addHeader(oauthHeader);
            httpPost.addHeader(prettyPrintHeader);
            // The message we are going to post
            StringEntity body = new StringEntity(lead.toString(1));
            body.setContentType("application/json");
            httpPost.setEntity(body);

            //Make the request
            HttpResponse response = httpClient.execute(httpPost);

            //Process the results
            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode == 201) {
                String response_string = EntityUtils.toString(response.getEntity());
                JSONObject json = new JSONObject(response_string);
                // Store the retrieved lead id to use when we update the lead.
                leadId = json.getString("id");
                System.out.println("New Lead id from response: " + leadId);
            } else {
                System.out.println("Insertion of record unsuccessful. Status code returned is " + statusCode);
            }
        } catch (JSONException e) {
            System.out.println("Issue creating JSON or processing results");
            e.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (NullPointerException npe) {
            npe.printStackTrace();
        }
    }
}
