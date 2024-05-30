import 'package:flutter/material.dart';
import 'package:dlsl_info_app/global.dart'; 

class Event1 extends StatelessWidget {
  const Event1({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalFunction.dlslAppBar(context, 'Event'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                  color: Colors.white
            ),







          )
          
          
          
          
        )


      )

    );


  }
}