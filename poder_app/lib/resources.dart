import 'package:flutter/material.dart';

class Resources extends StatefulWidget {
  @override
  _ResourcesState createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
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
                child: Text("Local Resources",
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
          Container(
            margin: const EdgeInsets.only(left: 0, top: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Mama's Day Care Center",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(
                        Icons.location_on,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("10 S Dearborn, Chicago, IL 11111",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(
                        Icons.call,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("(815) 702-3892",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(
                        Icons.calendar_today,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text("Sun: Closed",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text("M-F: 8 AM to 7 PM",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text("Sat: 9 AM to 4 PM",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Ms. Greens Day Care",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(
                        Icons.location_on,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("5 N Monroe Dr, Chicago, IL 11111",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(
                        Icons.call,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("(815) 892-4920",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(
                        Icons.calendar_today,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text("Sun: 9 AM to 3 PM",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text("M-F: 8 AM to 7 PM",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text("Sat: 9 AM to 4 PM",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("The Laundry Center",
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(
                        Icons.location_on,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("72 N Georgia Ave, Chicago, IL 11111",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(
                        Icons.call,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Text("(815) 894-8945",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(
                        Icons.calendar_today,
                        size: 25,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text("Sun: Closed",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text("M-F: 7 AM to 6:30 PM",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: Text("Sat: Closed",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
