import 'package:database_connection/widgets/call_to_action/call_to_action.dart';
import 'package:database_connection/widgets/centered_view/centered_view.dart';
import 'package:database_connection/widgets/course_details/course_details.dart';
import 'package:database_connection/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const String id = 'Home_screen';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBars(),
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
