import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'assessment.dart';

class SignupFlow extends StatefulWidget {
  @override
  _SignupFlowState createState() => _SignupFlowState();
}

class _SignupFlowState extends State<SignupFlow> {
  var stateArray = ["IGNORE", "", "", "IGNORE", "", "", ""];
  var pageNumber = 1;
  var questions = {1 : "Tell us a bit about yourself", 2 : "What is your physical address?", 3 : "Which of our programs would you be interested in? (Select all that apply)", 4 : "Please complete this intake form",
  5 : "Which additional services would you be interested in? (Select all that apply)", 6 : "What are your preferences?", 7 : "Please fill out this short survey"};

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
          onPressed: goToAssessment,
        ),
      );
    }
  }

  void goToAssessment() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Assessment()));
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
  int _val1 = 0;
  int _val2 = 1;
  int _hispanic = 0;
  int _notHispanic = 1;
  int _2Language = 0;
  int _notLanguage = 1;
  Widget intakeFormPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 0),
      child: Container(
        height: 461,
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
            InkWell(
              onTap: showDateSelector,
              child: Container(
                child: Text(
                  dobString,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF737373),
                  )
                  ,),
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "What is your marital status?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, right: 275, bottom: 10),
              height: 2,
              color: Colors.amber,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Radio(
                  value: 1,
                  groupValue: _val1,
                  onChanged: (int value) {
                    setState(() {
                      _val1 = value;
                    });
                  },
                ),
                new Text(
                  'Married',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 2,
                  groupValue: _val2,
                  onChanged: (int value) {
                    setState(() {
                      _val2 = value;
                    });
                  },
                ),
                new Text(
                  'Single',
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text(
              "Are you hispanic or latino?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, right: 275, bottom: 10),
              height: 2,
              color: Colors.amber,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Radio(
                  value: 1,
                  groupValue: _hispanic,
                  onChanged: (int value) {
                    setState(() {
                      _hispanic = value;
                    });
                  },
                ),
                new Text(
                  'Yes',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 2,
                  groupValue: _notHispanic,
                  onChanged: (int value) {
                    setState(() {
                      _notHispanic = value;
                    });
                  },
                ),
                new Text(
                  'No',
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text(
              "What is your country of origin?",
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
                hintText: 'Mexico',
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "Is english your second language?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, right: 275, bottom: 10),
              height: 2,
              color: Colors.amber,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Radio(
                  value: 1,
                  groupValue: _2Language,
                  onChanged: (int value) {
                    setState(() {
                      _2Language = value;
                    });
                  },
                ),
                new Text(
                  'Yes',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 2,
                  groupValue: _notLanguage,
                  onChanged: (int value) {
                    setState(() {
                      _notLanguage = value;
                    });
                  },
                ),
                new Text(
                  'No',
                  style: new TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text(
              "If yes, what is your primary language?",
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
                hintText: 'Spanish',
              ),
            ),
            SizedBox(height: 30,),
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
                  dobString = DateFormat.yMMMd().format(newDate).toString();
                });
              },
              initialDateTime: dob,
              mode: CupertinoDatePickerMode.date,
            ),
          );
        });
  }
  bool dayCareSelected = false;
  bool laundrySelected = false;
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
                    child: Text("Day care", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: !dayCareSelected ? Colors.amber : Colors.green,
                    onPressed: () {
                      setState(() {
                        dayCareSelected = !dayCareSelected;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FlatButton(
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                    child: Text("Laundry", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    color: !laundrySelected ? Colors.amber : Colors.green,
                    onPressed: () {
                      setState(() {
                        laundrySelected = !laundrySelected;
                      });
                    },
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
  bool location1 = false;
  bool location2 = false;
  bool location3 = false;
  bool location4 = false;
  bool morning = false;
  bool night = false;
  Widget preferencesPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 25),
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Please select the locations you are interested in taking classes",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, right: 275, bottom: 15),
              height: 2,
              color: Colors.amber,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: location1,
                  onChanged: (bool value) {
                    setState(() {
                      location1 = value;
                    });
                  },
                ),
                Text("Pulaski/Marquette Bank (6155 S. Pulaski)"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: location2,
                  onChanged: (bool value) {
                    setState(() {
                      location2 = value;
                    });
                  },
                ),
                Text("Sawyer/St. Gall Parish (5533 S. Sawyer)"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: location3,
                  onChanged: (bool value) {
                    setState(() {
                      location3 = value;
                    });
                  },
                ),
                Text("Kedzie/MFS (6422 S. Kedzie)"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: location4,
                  onChanged: (bool value) {
                    setState(() {
                      location4 = value;
                    });
                  },
                ),
                Text("Stevenson/MFS (8010 S. Kostner)"),
              ],
            ),
            SizedBox(height: 10,),
            Text(
              "Please select the times of day you are interested in",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, right: 275, bottom: 15),
              height: 2,
              color: Colors.amber,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: morning,
                  onChanged: (bool value) {
                    setState(() {
                      morning = value;
                    });
                  },
                ),
                Text("Morning"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: night,
                  onChanged: (bool value) {
                    setState(() {
                      night = value;
                    });
                  },
                ),
                Text("Night"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool friend = false;
  bool comm = false;
  bool vol = false;
  bool online = false;
  bool other = false;
  bool english = false;
  bool getJob = false;
  bool trainJob = false;
  bool computer = false;
  bool other2 = false;
  // SURVEY PAGE
  Widget surveyPage() {
    return Padding(
      padding: const EdgeInsets.only(left: 27, top: 0),
      child: Container(
        height: 436,
        padding: const EdgeInsets.only(right: 15),
        child: ListView(
          children: <Widget>[
            Text(
              "How did you hear about Poder?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, right: 275, bottom: 15),
              height: 2,
              color: Colors.amber,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: friend,
                  onChanged: (bool value) {
                    setState(() {
                      friend = value;
                    });
                  },
                ),
                Text("Friend/Family"),
                SizedBox(width: 10,),
                Container(
                  width: 97,
                  child: TextField(
                    maxLength: 30,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: -2),
                      counterText: "",
                      //border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Please Specify',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: comm,
                  onChanged: (bool value) {
                    setState(() {
                      comm = value;
                    });
                  },
                ),
                Text("Community/Organization"),
                SizedBox(width: 10,),
                Container(
                  width: 97,
                  child: TextField(
                    maxLength: 30,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: -2),
                      counterText: "",
                      //border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Please Specify',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: vol,
                  onChanged: (bool value) {
                    setState(() {
                      vol = value;
                    });
                  },
                ),
                Text("Voluntary"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: online,
                  onChanged: (bool value) {
                    setState(() {
                      online = value;
                    });
                  },
                ),
                Text("Online"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: other,
                  onChanged: (bool value) {
                    setState(() {
                      other = value;
                    });
                  },
                ),
                Text("Other:"),
                SizedBox(width: 10,),
                Container(
                  width: 97,
                  child: TextField(
                    maxLength: 30,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: -2),
                      counterText: "",
                      //border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Please Specify',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Text(
              "What is the main reason you're using Poder?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, right: 275, bottom: 15),
              height: 2,
              color: Colors.amber,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: friend,
                  onChanged: (bool value) {
                    setState(() {
                      friend = value;
                    });
                  },
                ),
                Text("To learn English"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: english,
                  onChanged: (bool value) {
                    setState(() {
                      english = value;
                    });
                  },
                ),
                Text("To get a job"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: getJob,
                  onChanged: (bool value) {
                    setState(() {
                      getJob = value;
                    });
                  },
                ),
                Text("Job training"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: trainJob,
                  onChanged: (bool value) {
                    setState(() {
                      trainJob = value;
                    });
                  },
                ),
                Text("Computer/Tech"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: other2,
                  onChanged: (bool value) {
                    setState(() {
                      other2 = value;
                    });
                  },
                ),
                Text("Other:"),
                SizedBox(width: 10,),
                Container(
                  width: 97,
                  child: TextField(
                    maxLength: 30,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: -2),
                      counterText: "",
                      //border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Please Specify',
                    ),
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
