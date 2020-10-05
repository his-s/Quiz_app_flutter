import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constant.dart';
import 'package:quizapp/Subcontainer.dart';
import 'QuizCatogery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final int quizNumber = 27;
  final int winRatio = 78;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kTopContainer,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey Jacob here\'s is your \nprogress so far',
                      style: TextStyle(
                        color: kMainTextColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(25),
                        margin: EdgeInsets.only(bottom: 10, top: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: kTopChildContainer,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            proInfo(
                              'Quiz Completed',
                              Icons.list,
                              quizNumber.toString(),
                            ),
                            VerticalDivider(
                              color: Colors.white,
                            ),
                            proInfo(
                              'Win Ratio',
                              Icons.thumb_up,
                              '$winRatio\%',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: ListView(
                  children: [
                    quizInfo(1, 'People\$Places', .7, () {}),
                    quizInfo(1, 'People\$Places', .7, () {}),
                    quizInfo(1, 'People\$Places', .7, () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
