import 'package:flutter/material.dart';
import 'package:dlsl_info_app/pages/home.dart';

class GlobalFunction {
  static get context => null;

  static AppBar dlslAppBar(BuildContext context, String title) {
    return AppBar(
      backgroundColor: const Color(0xFF00872C),
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: () {
          Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => const HomePage())
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'lib/assets/images/logo.png',
            width: 300,
            height: 200,
            fit: BoxFit.contain,
            ),
        ),
      ),

      title: Text(
        title,
        style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              letterSpacing: 0,
            ),
      ),
      actions: const [],
      centerTitle: true,
      elevation: 2,
    );
  }
}
