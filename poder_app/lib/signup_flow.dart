import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupFlow extends StatefulWidget {
  @override
  _SignupFlowState createState() => _SignupFlowState();
}

class _SignupFlowState extends State<SignupFlow> {
  var stateArray = ["IGNORE", "", "", "IGNORE", "", "", ""];
  var pageNumber = 1;
  var questions = {1 : "Tell us a bit about yourself", 2 : "What is your physical address?", 3 : "Which of our programs would you be interested in? (Select all that apply)", 4 : "Please complete this intake form",
  5 : "Which of our services would you be interested in? (Select all that apply)", 6 : "What are your preferences?", 7 : "Please fill out this short survey"};

  //sjkndkf
  void nextPage() {
    setState(() {
      pageNumber++;
    });
  }

  void updateStateArray(newText) {
    if (stateArray[pageNumber] != "IGNORE") {
      setState(() {
        stateArray[pageNumber] = newText;
      });
    }
  }

  Widget nextButton() {
    if (pageNumber < 7) {
      return Container(
        width: 60.0,
        height: 73.0,
        child: IconButton(
          icon: Icon(Icons.play_circle_filled),
          iconSize: 60,
          onPressed: nextPage,
        ),
      );
    }
    else {
      return Container(
        width: 60.0,
        height: 73.0,
        child: IconButton(
          icon: Icon(Icons.check_circle, color: Colors.green,),
          iconSize: 60,
          onPressed: null,
        ),
      );
    }
  }

  Widget footer() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            width: 20,
            height: 20,
            decoration: new BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 20,
            height: 20,
            decoration: new BoxDecoration(
              color: pageNumber >= 2 ? Colors.red : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 20,
            height: 20,
            decoration: new BoxDecoration(
              color: pageNumber >= 3 ? Colors.red : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 20,
            height: 20,
            decoration: new BoxDecoration(
              color: pageNumber >= 4 ? Colors.red : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 20,
            height: 20,
            decoration: new BoxDecoration(
              color: pageNumber >= 5 ? Colors.red : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 20,
            height: 20,
            decoration: new BoxDecoration(
              color: pageNumber >= 6 ? Colors.red : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 20,
            height: 20,
            decoration: new BoxDecoration(
              color: pageNumber >= 7 ? Colors.red : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          nextButton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 710,
            child: Column(
              children: <Widget>[
                SizedBox(height: 0,),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 120),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Welcome!",
                      style: new TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25, top: 35),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(questions[pageNumber],
                      style: new TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  margin: const EdgeInsets.only(left: 27.0, right: 250.0, top: 10),
                  color: Colors.red,
                ),
                currentQuestion(),
              ],
            ),
          ),
          footer(),
        ],
      ),
    );
  }

  TextEditingController _phoneNumberController;
  @override
  void initState() {
    super.initState();
    _phoneNumberController = new TextEditingController(text: "");
  }

  Widget currentQuestion() {
    if (pageNumber == 1) {
      return namePage();
    }
    if (pageNumber == 2) {
      return addressPage();
    }
    if (pageNumber == 3) {
      return programsPage();
    }
    if (pageNumber == 4) {
      return intakeFormPage();
    }
    if (pageNumber == 5) {
      return servicesPage();
    }
    if (pageNumber == 6) {
      return preferencesPage();
    }
    if (pageNumber == 7) {
      return surveyPage();
    }
    return Container();
  }

  double hoursSleep = 8;
  double minutesExercise = 45;

  // NAME PAGE
  Widget namePage() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 27, top: 35),
          child: Container(
            padding: const EdgeInsets.only(right: 15),
            child: new TextField(
              onChanged: (newName) {
                updateStateArray(newName);
              },
              maxLength: 30,
              style: new TextStyle(
                fontSize: 25,
              ),
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: -2),
                counterText: "",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Full name',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 27, top: 45),
          child: Container(
            padding: const EdgeInsets.only(right: 15),
            child: new TextField(
              onChanged: (newName) {
                updateStateArray(newName);
              },
              maxLength: 30,
              style: new TextStyle(
                fontSize: 25,
              ),
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: -2),
                counterText: "",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Phone number',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 27, top: 45),
          child: Container(
            padding: const EdgeInsets.only(right: 15),
            child: new TextField(
              onChanged: (newName) {
                updateStateArray(newName);
              },
              maxLength: 30,
              style: new TextStyle(
                fontSize: 25,
              ),
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: -2),
                counterText: "",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Email address',
              ),
            ),
          ),
        ),
      ],
    );
  }

  // CONTACT INFO PAGE
  Widget contactInfoPage() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 27, top: 25),
          child: Container(
            padding: const EdgeInsets.only(right: 15),
            child: new TextField(
              controller: _phoneNumberController,
              onChanged: (number) {
                updateStateArray(number);
              },
              maxLength: 30,
              style: new TextStyle(
                fontSize: 25,
              ),
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: -2),
                counterText: "",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: '123-456-7890',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 27, top: 25),
          child: Container(
            padding: const EdgeInsets.only(right: 15),
            child: new TextField(
              onChanged: (number) {
                updateStateArray(number);
              },
              maxLength: 30,
              style: new TextStyle(
                fontSize: 25,
              ),
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: -2),
                counterText: "",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'benjamin@gmail.com',
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ADDRESS PAGE
  Widget addressPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 25),
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        child: new TextField(
          onChanged: (newName) {
            updateStateArray(newName);
          },
          maxLength: 30,
          style: new TextStyle(
            fontSize: 25,
          ),
          decoration: new InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: -2),
            counterText: "",
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: '1600 Pennsylvania Ave...',
          ),
        ),
      ),
    );
  }

  // PROGRAMS PAGE
  bool eslSelected = false;
  bool wfdSelected = false;
  void selectEsl () {
    setState(() {
      eslSelected = !eslSelected;
    });
  }

  void selectWfd () {
    setState(() {
      wfdSelected = !wfdSelected;
    });
  }
  Widget programsPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 25),
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child: Text("English as a Second Language", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: !eslSelected ? Colors.amber : Colors.green,
                    onPressed: selectEsl,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child: Text("Work Force Development", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: !wfdSelected ? Colors.amber : Colors.green,
                    onPressed: selectWfd,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  // INTAKE FORM PAGE
  DateTime dob = DateTime.now();
  String dobString = "Select";
  Widget intakeFormPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 0),
      child: Container(
        height: 300,
        padding: const EdgeInsets.only(right: 20),
        child: ListView(
          children: <Widget>[
            Text(
              "What is your social security number?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, right: 275, bottom: 15),
              height: 2,
              color: Colors.amber,
            ),
            TextField(
              onChanged: (newAmount) {
                updateStateArray(newAmount);
              },
              maxLength: 30,
              style: TextStyle(
                fontSize: 25,
              ),
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: -2),
                counterText: "",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: '123-45-6789',
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "What is your date of birth?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, right: 275, bottom: 15),
              height: 2,
              color: Colors.amber,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: 120,
              height: 30,
              child: FlatButton(
                child: Text(
                  dobString,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF737373),
                  )
                ,),
                onPressed: showDateSelector,
              ),
            ),
          ],
        )
      ),
    );
  }

  void showDateSelector() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height / 3,
            child: CupertinoDatePicker(
              onDateTimeChanged: (DateTime newDate) {
                setState(() {
                  dob = newDate;
                  //dobString = DateFormat.yMMMd().format(newDate).toString();
                });
              },
              initialDateTime: dob,
              mode: CupertinoDatePickerMode.date,
            ),
          );
        });
  }

  // SERVICES PAGE
  Widget servicesPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 25),
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child: Text("English as a Second Language", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: Colors.amber,
                    onPressed: nextPage,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child: Text("Work Force Development", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: Colors.amber,
                    onPressed: nextPage,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // PREFERENCES PAGE
  Widget preferencesPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 25),
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child: Text("English as a Second Language", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: Colors.amber,
                    onPressed: nextPage,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child: Text("Work Force Development", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: Colors.amber,
                    onPressed: nextPage,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // SURVEY PAGE
  Widget surveyPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 25),
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child: Text("English as a Second Language", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: Colors.amber,
                    onPressed: nextPage,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child: Text("Work Force Development", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: Colors.amber,
                    onPressed: nextPage,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


