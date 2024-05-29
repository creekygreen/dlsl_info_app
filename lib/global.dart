import 'package:flutter/material.dart';

class GlobalFunction {
  static AppBar dlslAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF00872C),
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () async {
          // context.pushNamed('HomePage');
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
          );
  }
}
