import java.io.IOException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.util.EntityUtils;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.json.JSONException;

public class Main {
    static final String USERNAME     = "Awaleahmed@Salesforce.com";
    static final String PASSWORD     = "";
    static final String LOGINURL     = "https://login.salesforce.com";
    static final String GRANTSERVICE = "/services/oauth2/token?grant_type=password";
    static final String CLIENTID     = "";
    static final String CLIENTSECRET = "";

    public static void main(String[] args) {
        HttpClient httpclient = HttpClientBuilder.create().build();
        String login = LOGINURL +
                GRANTSERVICE +
                "&client_id=" + CLIENTID +
                "&client_secret=" + CLIENTSECRET +
                "&username=" + USERNAME +
                "&password=" + PASSWORD;
        HttpPost post = new HttpPost(login);
        HttpResponse response = null;

        try {
            // Execute the login POST request
            response = httpclient.execute(post);
        } catch (ClientProtocolException cpException) {
            cpException.printStackTrace();
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }

        final int STATUS_CODE = response.getStatusLine().getStatusCode();
        if (STATUS_CODE != HttpStatus.SC_OK) {
            System.out.println("Error, could not authenticate");
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

        System.out.println(response.getStatusLine());
        System.out.println("Successful login");
        System.out.println("  instance URL: "+loginInstanceUrl);
        System.out.println("  access token/session ID: "+loginAccessToken);

        // release connection
        post.releaseConnection();

    }
}
