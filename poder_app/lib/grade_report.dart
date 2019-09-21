import 'package:flutter/material.dart';

import 'dashboard.dart';

class GradeReport extends StatefulWidget {
  @override
  _GradeReportState createState() => _GradeReportState();
}

class _GradeReportState extends State<GradeReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 0,top: 80),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Your Score",
                          style: new TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5,top: 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("90%",
                          style: new TextStyle(
                            color: Colors.blue,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 28,top: 70),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("5/5 Grammar",
                          style: new TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 28,top: 3),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("3/5 Vocab",
                          style: new TextStyle(
                            color: Colors.amber,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 28,top: 3),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("5/5 Logic",
                          style: new TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 28,top: 3),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("5/5 Spelling",
                          style: new TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 5,top: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Congratulations, you have been placed at Level 4!",
                  style: new TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5,top: 40),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("You are eligible for the following programs:",
                  style: new TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 3,
              margin: const EdgeInsets.only(left: 7.0, right: 250.0, top: 10),
              color: Colors.red,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5,top: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("  - ESL Level 4",
                  style: new TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5,top: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("  - Customer Service",
                  style: new TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5,top: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("  - Latinos in Finance",
                  style: new TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5,top: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("  - Insurance",
                  style: new TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: FlatButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                color: Colors.green,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Orientation()));
                },
                child: Text("Continue to enroll!", style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Orientation extends StatefulWidget {
  @override
  _OrientationState createState() => _OrientationState();
}

class _OrientationState extends State<Orientation> {
  bool v1 = false;
  bool v2 = false;
  bool v3 = false;
  bool v4 = false;
  bool p1 = false;
  bool p2 = false;
  bool p3 = false;
  bool p4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 27, top: 100),
        child: Container(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Please select the programs you would like to enroll in:",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
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
                    value: p1,
                    onChanged: (bool value) {
                      setState(() {
                        p1 = value;
                      });
                    },
                  ),
                  Text("ESL Level 4"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: p2,
                    onChanged: (bool value) {
                      setState(() {
                        p2 = value;
                      });
                    },
                  ),
                  Text("Customer Service"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: p3,
                    onChanged: (bool value) {
                      setState(() {
                        p3 = value;
                      });
                    },
                  ),
                  Text("Latinos in Finance"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: p4,
                    onChanged: (bool value) {
                      setState(() {
                        p4 = value;
                      });
                    },
                  ),
                  Text("Insurance"),
                ],
              ),
              SizedBox(height: 30,),
              Text(
                "Please select an orientation date:",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
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
                    value: v1,
                    onChanged: (bool value) {
                      setState(() {
                       v1 = value;
                      });
                    },
                  ),
                  Text("October 23, 2019, 9:00 AM - 1:00 PM"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: v2,
                    onChanged: (bool value) {
                      setState(() {
                        v2 = value;
                      });
                    },
                  ),
                  Text("October 30, 2019, 9:00 AM - 1:00 PM"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: v3,
                    onChanged: (bool value) {
                      setState(() {
                        v3 = value;
                      });
                    },
                  ),
                  Text("November 6, 2019, 3:00 PM - 7:00 PM"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    value: v4,
                    onChanged: (bool value) {
                      setState(() {
                        v4 = value;
                      });
                    },
                  ),
                  Text("November 13, 2019, 3:00 PM - 7:00 PM"),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120.0),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                  child: Text("Finish", style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}