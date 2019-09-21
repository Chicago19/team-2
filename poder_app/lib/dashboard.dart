import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:poder_app/resources.dart';
import 'forum.dart';
import 'homework.dart';

TabController tabController;
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home, size: 30, color: Colors.white,),),
              //Tab(icon: Icon(Icons.calendar_today, size: 30, color: Colors.white,),),
              Tab(icon: Icon(Icons.playlist_add_check, size: 30, color: Colors.white,),),
              Tab(icon: Icon(Icons.question_answer, size: 30, color: Colors.white,)),
              Tab(icon: Icon(Icons.place, size: 30, color: Colors.white,)),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
            color: Colors.white,
            child: Home(),
          ),
          /*Container(
            color: Colors.white,
            child: Calendar2(),
          ),*/
          Container(
            color: Colors.white,
            child: Homework(),
          ),
          Container(
            color: Colors.white,
            child: Forum(),
          ),
          Container(
            color: Colors.white,
            child: Resources(),
          )
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _getDate() {
    var month = new DateFormat.MMMMd().format(new DateTime.now());
    var year = new DateFormat.y().format(new DateTime.now());
    return month + ", " + year;
  }

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
                child: Text("Dashboard",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, top: 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(_getDate(),
                style: new TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Container(
            height: 95,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Icon(
                      Icons.chrome_reader_mode,
                      size: 60,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("95%",
                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Color(0xFF228B22)),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: Text("Overall grade",
                          style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold, color: Color(0xFF228B22)),
                        ),
                      ),
                    ),
                    //SizedBox(width: 15),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 95,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Icon(
                      Icons.show_chart,
                      size: 60,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("80%",
                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text("Course Progress",
                          style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold, color: Colors.amber),
                        ),
                      ),
                    ),
                    //SizedBox(width: 15),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 95,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 20,),
                    Icon(
                      Icons.assignment_late,
                      size: 60,
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("4",
                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Color(0xFFCC0202)),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: Text("Absences",
                          style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold, color: Color(0xFFCC0202)),
                        ),
                      ),
                    ),
                    //SizedBox(width: 15),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Announcements",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Class Cancelled 10/14",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 2, top: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("October 12, 2019",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, left: 18, right: 275, bottom: 15),
            height: 2,
            color: Colors.amber,
          ),
          Container(
            margin: const EdgeInsets.only(left: 2, top: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Due to unforseen circumstances, Poder ESL level 4 "
                    "classes will be cancelled this Monday. We will accomodate "
                    "by adding an additional class to the end of the trimester."
                    "Homework will be pushed back 1 week accordingly.",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Homework Returned",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 2, top: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("October 10, 2019",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, left: 18, right: 275, bottom: 15),
            height: 2,
            color: Colors.amber,
          ),
          Container(
            margin: const EdgeInsets.only(left: 2, top: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Your grades for Homework assignment #2 have been returned to you!"
                    "The class average was 92%! I am very proud of you all!",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Next Trimester",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 2, top: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("October 4, 2019",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, left: 18, right: 275, bottom: 15),
            height: 2,
            color: Colors.amber,
          ),
          Container(
            margin: const EdgeInsets.only(left: 2, top: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Please be sure to rememeber to register for next "
                    "trimester classes! If you are not passing your current"
                    "level, please see me to talk about what your next steps"
                    "should be! Have a great weekend all!",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0, vertical: 20),
            child: FlatButton(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard()));
              },
              child: Text("See more", style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
