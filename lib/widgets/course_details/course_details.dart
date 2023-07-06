import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'FLUTTER WEB.\nTHE BASICS',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: 80,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'In this course we will go over the basics of using Flutter Web for building your apps. We will look at the basics of setting up a flutter web project, routing, and deploying the app to the web.',
            style: TextStyle(fontSize: 21, height: 1.7),
          ),
        ],
      ),
    );
  }
}
