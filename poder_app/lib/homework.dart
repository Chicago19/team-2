import 'package:flutter/material.dart';

class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 0, top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Assignments",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15,top: 8, right: 275, bottom: 15),
            height: 2,
            color: Colors.amber,
          ),
          //SizedBox(height: 20,),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment_late,
                      size: 35,
                      color: Color(0xFFCC0202),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text("HW 5: Grammar Practice",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 15),
                    //SizedBox(width: 15),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 34,),
                    Icon(
                      Icons.camera_alt,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment_turned_in,
                      size: 35,
                      color: Color(0xFF228B22),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text("HW 4: Vocab Worksheet",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 17),
                    //SizedBox(width: 15),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 34,),
                    Icon(
                      Icons.edit,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("HW 6: Writing",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 15),
                      //SizedBox(width: 15),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 125,),
                    Icon(
                      Icons.camera_alt,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("HW 7: Speaking Assignment",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 0),
                      //SizedBox(width: 15),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Icon(
                      Icons.camera_alt,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment_returned,
                      size: 35,
                      color: Color(0xFF228B22),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("HW 1: Getting Started",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 0),
                      //SizedBox(width: 15),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 72,),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text("97%",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF228B22)),
                      ),
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment_returned,
                      size: 35,
                      color: Color(0xFF228B22),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("HW 2: Essay 1",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 0),
                      //SizedBox(width: 15),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 135,),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text("86%",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment_returned,
                      size: 35,
                      color: Color(0xFF228B22),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("HW 3: Why A+",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 0),
                      //SizedBox(width: 15),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 130,),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text("68%",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFCC0202)),
                      ),
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("HW 8: Study Cards Exam 1",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 0),
                      //SizedBox(width: 15),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 30,),
                    Icon(
                      Icons.camera_alt,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("HW 9: Interview a friend",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 0),
                      //SizedBox(width: 15),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 52,),
                    Icon(
                      Icons.camera_alt,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("HW 10: Record Conversation",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 0),
                      //SizedBox(width: 15),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 13,),
                    Icon(
                      Icons.camera_alt,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Icon(
                      Icons.assignment,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("HW 11: Study Cards Exam 2",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 0),
                      //SizedBox(width: 15),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 22,),
                    Icon(
                      Icons.camera_alt,
                      size: 35,
                      color: Colors.black,
                    ),
                    SizedBox(width: 0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
