import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'grade_report.dart';

class Assessment extends StatefulWidget {
  @override
  _AssessmentState createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                SizedBox(height: 0,),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 80),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("English Assessment",
                      style: new TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 8, right: 27),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("This is required for the ESL Program",
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  margin: const EdgeInsets.only(left: 25.0, right: 250.0, top: 10),
                  color: Colors.amber,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 20, right: 27),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Directions: Select the most appropriate answer to fill in the blank.",
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 598,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 598,
                        child: ListView(
                          children: <Widget>[
                            MultipleChoiceQuestion(
                              question: "There are three ________ on the table.",
                              answer1: "cup",
                              answer2: "cups",
                              answer3: "cake",
                              answer4: "plate",
                            ),
                            MultipleChoiceQuestion(
                              question: "What are Katia and Sara doing? They ______.",
                              answer1: "talking",
                              answer2: "are talking",
                              answer3: "is talking",
                              answer4: "talk",
                            ),
                            MultipleChoiceQuestion(
                              question: "Does Lee _____ a fever?",
                              answer1: "had",
                              answer2: "has",
                              answer3: "have",
                              answer4: "having",
                            ),
                            MultipleChoiceQuestion(
                              question: "There are three ________ on the table.",
                              answer1: "cup",
                              answer2: "cups",
                              answer3: "cake",
                              answer4: "plate",
                            ),
                            MultipleChoiceQuestion(
                              question: "What are Katia and Sara doing? They ______.",
                              answer1: "talking",
                              answer2: "are talking",
                              answer3: "is talking",
                              answer4: "talk",
                            ),
                            MultipleChoiceQuestion(
                              question: "Does Lee _____ a fever?",
                              answer1: "had",
                              answer2: "has",
                              answer3: "have",
                              answer4: "having",
                            ),
                            MultipleChoiceQuestion(
                              question: "There are three ________ on the table.",
                              answer1: "cup",
                              answer2: "cups",
                              answer3: "cake",
                              answer4: "plate",
                            ),
                            MultipleChoiceQuestion(
                              question: "What are Katia and Sara doing? They ______.",
                              answer1: "talking",
                              answer2: "are talking",
                              answer3: "is talking",
                              answer4: "talk",
                            ),
                            MultipleChoiceQuestion(
                              question: "Does Lee _____ a fever?",
                              answer1: "had",
                              answer2: "has",
                              answer3: "have",
                              answer4: "having",
                            ),
                            MultipleChoiceQuestion(
                              question: "There are three ________ on the table.",
                              answer1: "cup",
                              answer2: "cups",
                              answer3: "cake",
                              answer4: "plate",
                            ),
                            MultipleChoiceQuestion(
                              question: "What are Katia and Sara doing? They ______.",
                              answer1: "talking",
                              answer2: "are talking",
                              answer3: "is talking",
                              answer4: "talk",
                            ),
                            MultipleChoiceQuestion(
                              question: "Does Lee _____ a fever?",
                              answer1: "had",
                              answer2: "has",
                              answer3: "have",
                              answer4: "having",
                            ),
                            MultipleChoiceQuestion(
                              question: "There are three ________ on the table.",
                              answer1: "cup",
                              answer2: "cups",
                              answer3: "cake",
                              answer4: "plate",
                            ),
                            MultipleChoiceQuestion(
                              question: "What are Katia and Sara doing? They ______.",
                              answer1: "talking",
                              answer2: "are talking",
                              answer3: "is talking",
                              answer4: "talk",
                            ),
                            MultipleChoiceQuestion(
                              question: "Does Lee _____ a fever?",
                              answer1: "had",
                              answer2: "has",
                              answer3: "have",
                              answer4: "having",
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: FlatButton(
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                                color: Colors.green,
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SpeechExam()));
                                },
                                child: Text("Proceed to Oral Exam", style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            SizedBox(height: 80,),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MultipleChoiceQuestion extends StatefulWidget {
  final String question;
  final String answer1;
  final String answer2;
  final String answer3;
  final String answer4;

  const MultipleChoiceQuestion({Key key, this.question, this.answer1, this.answer2, this.answer3, this.answer4}) : super(key: key);
  @override
  _MultipleChoiceQuestionState createState() => _MultipleChoiceQuestionState();
}

class _MultipleChoiceQuestionState extends State<MultipleChoiceQuestion> {
  bool answer1 = false;
  bool answer2 = false;
  bool answer3 = false;
  bool answer4 = false;

  void setAllFalse(int curr) {
    setState(() {
      if (curr != 1)
        answer1 = false;
      if (curr != 2)
        answer2 = false;
      if (curr != 3)
        answer3 = false;
      if (curr != 4)
        answer4 = false;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 8, right: 275, bottom: 15),
            height: 2,
            color: Colors.amber,
          ),
          Text(
            widget.question,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                value: answer1,
                onChanged: (bool value) {
                  setState(() {
                    answer1 = value;
                  });
                  setAllFalse(1);
                },
              ),
              Text(widget.answer1),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                value: answer2,
                onChanged: (bool value) {
                  setState(() {
                    answer2 = value;
                  });
                  setAllFalse(2);
                },
              ),
              Text(widget.answer2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                value: answer3,
                onChanged: (bool value) {
                  setState(() {
                    answer3 = value;
                  });
                  setAllFalse(3);
                },
              ),
              Text(widget.answer3),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                value: answer4,
                onChanged: (bool value) {
                  setState(() {
                    answer4 = value;
                  });
                  setAllFalse(4);
                },
              ),
              Text(widget.answer4),
            ],
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}


class SpeechExam extends StatefulWidget {
  @override
  _SpeechExamState createState() => _SpeechExamState();
}

class _SpeechExamState extends State<SpeechExam> {
  bool recording = false;
  bool saved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                SizedBox(height: 0,),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 80),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("English Assessment",
                      style: new TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 8, right: 27),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("This is required for the ESL Program",
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  margin: const EdgeInsets.only(left: 25.0, right: 250.0, top: 10),
                  color: Colors.amber,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 20, right: 27),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Directions: Use your microphone to answer the following prompt.",
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 8, right: 27),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Tell me your name, what you do for work, and a fun fact about yourself.",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  margin: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                  color: Colors.amber,
                ),
                SizedBox(height: 5,),
                Row(
                  children: <Widget>[
                    SizedBox(width: 90),
                    RaisedButton(
                      elevation: 0,
                      color: recording ? Colors.red : Colors.grey,
                      child: Icon(Icons.mic),
                      onPressed: () {
                        setState(() {
                          if (!recording) {
                            recording = true;
                          }
                        });
                      },
                    ),
                    SizedBox(width: 25,),
                    RaisedButton(
                      elevation: 0,
                      color: saved ? Colors.green : Colors.grey,
                      child: Icon(Icons.done_all),
                      onPressed: () {
                        setState(() {
                          if (recording) {
                            saved = true;
                            recording = false;
                          }
                        });
                      },
                    ),
//                    FloatingActionButton(
//                      backgroundColor: recording ? Colors.red : Colors.black,
//                      child: Icon(Icons.mic),
//                      onPressed: () {
//                        setState(() {
//                          if (!recording) {
//                            recording = true;
//                          }
//                        });
//                      },
//                    ),
                    SizedBox(width: 20,),
//                    FloatingActionButton(
//                      backgroundColor: saved ? Colors.green : Colors.black,
//                      child: Icon(Icons.done_all),
//                      onPressed: () {
//                        if (recording) {
//                          setState(() {
//                            saved = true;
//                            recording = false;
//                          });
//                        }
//                      },
//                    ),
                  ],
                ),
                Container(
                  child: StreamBuilder(
                    stream: Firestore.instance.collection("speechToText").document("speech").snapshots(),
                    builder: (context, snapshot) {
                      print(snapshot.hasData);
                      if (!snapshot.hasData) {
                        return Text("",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                        );
                      }
                      else {
                        return Text(snapshot.data["speech"].toString(),
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                        );
                      }
                    },
                  ),
                ),
                Container(
                  height: 400,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 400,
                        child: ListView(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: FlatButton(
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                                color: Colors.green,
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GradeReport()));
                                },
                                child: Text("Submit for grading!", style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
