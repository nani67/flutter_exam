import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/recognizer.dart';
void main() => runApp(MyAppStateless());

class MyAppStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppStateful(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyAppStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<StatefulWidget> implements SingleChildScrollView {

  String q1a = '';
  String q2a = '';
  String q3a = '';
  String q4a = '';
  String q5a = '';

  String a1 = '';
  String a2 = '';
  String a3 = '';
  String a4 = '';
  String a5 = '';
  String timerText = '5:00';


  late Timer _timer;
  int _start = 300;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) => {
          if (_start < 1) {
            setState(() {
              examFinished = true;
              timer.cancel();


              int totalScore = 0;
              if(a1.isNotEmpty && a1 == q1a) {
                totalScore = totalScore + 1;
              }
              if(a2.isNotEmpty && a2 == q2a) {
                totalScore = totalScore + 1;
              }
              if(a3.isNotEmpty && a3 == q3a) {
                totalScore = totalScore + 1;
              }
              if(a4.isNotEmpty && a4 == q4a) {
                totalScore = totalScore + 1;
              }
              if(a5.isNotEmpty && a5 == q5a) {
                totalScore = totalScore + 1;
              }
              print('Score is ${totalScore}');


            })
        } else {
            setState(() {

        _start = _start - 1;
        timerText = '${(_start / 60).toInt()}:${_start % 60}';
        })
      }


    });
    }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  bool startApp = false;
  bool examFinished = false;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Flutter Quiz'),
        actions: [
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
              child: Text(timerText),
            ),
          ),
        ],
      ),
      body: examFinished ? Center(
        child: Text('Thanks for attending. See your scores in console'),
      ) : ListView(

        children: [

          !startApp ? Container(
            margin: EdgeInsets.all(16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {

                  startApp = true;
                  startTimer();
                }, child: Text('Start'),
              ),
            ),
          ) : Container(),


          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
            child:
            startApp ? Text('Question',) : Text('*********'),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child:TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Solution / Answer'),
              ),
              onChanged: (x) {
                print(x);
              },
            ),
          ),



          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            startApp ? Text('Question',) : Text('*********'),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child:TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Solution / Answer'),
              ),
              onChanged: (x) {
                print(x);
              },
            ),
          ),




          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            startApp ? Text('Question',) : Text('*********'),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child:TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Solution / Answer'),
              ),
              onChanged: (x) {
                print(x);
              },
            ),
          ),


          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            startApp ? Text('Question',) : Text('*********'),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child:TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Solution / Answer'),
              ),
              onChanged: (x) {
                print(x);
              },
            ),
          ),





          Padding(
            padding: EdgeInsets.all(8.0),
            child:
            startApp ? Text('Question',) : Text('*********'),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child:TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Solution / Answer'),
              ),
              onChanged: (x) {
                print(x);
              },
            ),
          ),

















        ],
      ),
      floatingActionButton: startApp ?  FloatingActionButton(
        onPressed: () {

          examFinished = true;
          int totalScore = 0;
          if(a1.isNotEmpty && a1 == q1a) {
            totalScore = totalScore + 1;
          }
          if(a2.isNotEmpty && a2 == q2a) {
            totalScore = totalScore + 1;
          }
          if(a3.isNotEmpty && a3 == q3a) {
            totalScore = totalScore + 1;
          }
          if(a4.isNotEmpty && a4 == q4a) {
            totalScore = totalScore + 1;
          }
          if(a5.isNotEmpty && a5 == q5a) {
            totalScore = totalScore + 1;
          }
          print('Score is ${totalScore}');
        },
        child: Icon(Icons.navigate_next),
      ) : null,
    );
  }

  @override
  // TODO: implement child
  Widget? get child => throw UnimplementedError();

  @override
  // TODO: implement clipBehavior
  Clip get clipBehavior => throw UnimplementedError();

  @override
  // TODO: implement controller
  ScrollController? get controller => throw UnimplementedError();

  @override
  StatelessElement createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    throw UnimplementedError();
  }

  @override
  // TODO: implement dragStartBehavior
  DragStartBehavior get dragStartBehavior => throw UnimplementedError();

  @override
  // TODO: implement key
  Key? get key => throw UnimplementedError();

  @override
  // TODO: implement keyboardDismissBehavior
  ScrollViewKeyboardDismissBehavior get keyboardDismissBehavior => throw UnimplementedError();

  @override
  // TODO: implement padding
  EdgeInsetsGeometry? get padding => throw UnimplementedError();

  @override
  // TODO: implement physics
  ScrollPhysics? get physics => throw UnimplementedError();

  @override
  // TODO: implement primary
  bool? get primary => throw UnimplementedError();

  @override
  // TODO: implement restorationId
  String? get restorationId => throw UnimplementedError();

  @override
  // TODO: implement reverse
  bool get reverse => throw UnimplementedError();

  @override
  // TODO: implement scrollDirection
  Axis get scrollDirection => throw UnimplementedError();

  @override
  String toStringDeep({String prefixLineOne = '', String? prefixOtherLines, DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringDeep
    throw UnimplementedError();
  }

  @override
  String toStringShallow({String joiner = ', ', DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    // TODO: implement toStringShallow
    throw UnimplementedError();
  }

}