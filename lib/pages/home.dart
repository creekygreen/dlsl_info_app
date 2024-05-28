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
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 352,
                decoration: const BoxDecoration(
                  color: Color(0xFF00872C),
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                      child: Text(
                        'Be a Lasallian!',
                        style: TextStyle(
                          color: Color(0xFFFBFBFB),
                          fontSize: 25,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        )
                      )
                    ),

                    Text(
                      'Take the first step here. Discover your possibilities',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF6F6F6),
                        fontSize: 20,
                        letterSpacing: 0,
                      )
                    ),
                    //cosdaddasdadsasddads

                  ],
                )
              )
            ],
          )


        )
      )



    );
  }
}