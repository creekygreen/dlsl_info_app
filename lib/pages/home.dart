import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00872C),
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            // context.pushNamed('HomePage');
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/logo.png',
              width: 300,
              height: 200,
              fit: BoxFit.contain,
              ),
          ),
  ),
  title: const Text(
    'Homepage',
    style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          letterSpacing: 0,
        ),
  ),
  actions: const [],
  centerTitle: true,
  elevation: 2,

      ),


    );
  }
}