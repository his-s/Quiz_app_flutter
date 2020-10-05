import 'package:flutter/material.dart';
import 'package:quizapp/Constant.dart';

Widget proInfo(
  String quizInfo,
  IconData icon,
  String quizNum,
) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: kIconsColor,
          size: 30,
        ),
        Text(
          quizNum,
          style: TextStyle(
            color: kMainTextColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          quizInfo,
          style: TextStyle(
            color: kSmallTextColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
