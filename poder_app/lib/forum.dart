import 'package:flutter/material.dart';

class Forum extends StatefulWidget {
  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 0, top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Class Forum",
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
          SizedBox(height: 0,),
          ForumPost(title: "Job Opportunity in Construction", author: "Juan Lopez", message: "There is a "
              "great job opportunity with the local governemnt for those interested in construction."
              " The job pays \$15 an hour and is immigrant friendly. If you are interested, find"
              " the job posting at www.chicago.com/careers. Let me know if you have any questions!",),
          ForumPost(title: "Latinos in Finance", author: "Julia Crick", message: "The Latinos in Finance curriculum "
              "really helped prepare me for for my career in Finance!"
              " I just got an offer at JPMorgan Chase as a Finance Analyst!"
              " I highly recommend taking this course if you are interested in a career in Finance!",),
          ForumPost(title: "Customer Service", author: "Diego Gonzalez", message: "The Customer Service program has greatly helped me"
              "improve my career prospects. It has taught me very important life skills and has opened a lot of career pathways for me."
            ,)
        ],
      ),
    );
  }
}

class ForumPost extends StatefulWidget {
  final String title;
  final String author;
  final String message;

  const ForumPost({Key key, this.title, this.author, this.message}) : super(key: key);
  @override
  _ForumPostState createState() => _ForumPostState();
}

class _ForumPostState extends State<ForumPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 0, top: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(widget.title,
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
              child: Text("By: " + widget.author,
                textAlign: TextAlign.left,
                style: new TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 2, top: 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(widget.message,
                textAlign: TextAlign.left,
                style: new TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
            ),
          ),
        ),
        SizedBox(height: 5,),
        Row(
          children: <Widget>[
            SizedBox(width: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: FlatButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                color: Colors.green,
                onPressed: () {

                },
                child: Text("Comment", style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(width: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: FlatButton(
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                color: Colors.green,
                onPressed: () {

                },
                child: Text("Like", style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        )
      ],
    );
  }
}

