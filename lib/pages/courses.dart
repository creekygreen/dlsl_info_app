import 'package:flutter/material.dart';
import 'package:dlsl_info_app/global.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalFunction.dlslAppBar(context, 'Courses'),
      body: SafeArea(
        child:
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              GlobalFunction.courseContainer(
                context,
                'lib/assets/images/5vEeUOGcbzUKjTYLmgLWg7L6rN6iBR7tj7fjUqnW.png',
                'Integrated School',
                'Join our Integrated \nSchool community. '
              ),
              GlobalFunction.revCourseContainer(
                context,
                'lib/assets/images/GoFKWsxDpFOYdYNFL6QWa4zKHt20N6iyno4ZmVIA.png',
                'Colleges',
                'Empower yourself with\n essential skills.',
              ),
              GlobalFunction.courseContainer(
                context,
                'lib/assets/images/VrL5uhMnCCmCWDJ85E84om58H6GNXpjxJrqjAabI.png',
                'Graduate Programs',
                'Empower professionals to \nmake a lasting workplace impact.',
              ),
              GlobalFunction.revCourseContainer(
                context,
                'lib/assets/images/mE0QAPEHN2K5sd2Df7WlO6mVoQem739keFUOon7b.png',
                'College of Law',
                'Step into the path of your\n dream legal career.',
              ),
              GlobalFunction.courseContainer(
                context,
                'lib/assets/images/whIrS8HyCLEdbeTJQD7s7kxcoHVV0TrajBLFE0CS.png',
                'iPACE',
                'Elevate your career through \n cutting-edge programs.',
              ),
            ],
          )
        )
      )
    );
  }
}