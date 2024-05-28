import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        top: true,

        child: SingleChildScrollView(

          // Portion 1 of Homepage. Consists of the heading an the Carousel Slider
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [

              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 400,
                decoration: const BoxDecoration(
                  color: Color(0xFF00872C)
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [

                    // Home page intro header
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                      child: Text(
                        'Be a Lasallian!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                        )
                      )
                    ),

                    // Homepage intro subheader
                    const Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Text(
                        'Take the first step here. Discover your possibilities',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 0,
                        )
                      ),
                    ),

                    // Sizedbox containing the Carousel Slider
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          initialPage: 1,
                          viewportFraction: 0.5,
                          disableCenter: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.25,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: false,
                          // onPageChanged: (index, _) =>
                          ),

                        items: [
                          InkWell(
                            onTap: () async {
                              //context.pushNamed('Courses');
                            },

                            child: carouselCard(
                              'lib/assets/images/appli.png',
                              'APPLICATION PROCESSS',
                              'Learn more about our application process.'
                            )
                          ),

                          InkWell(
                            onTap: () async {
                              // Navigator.of(context).pushNamed('Courses');
                            },

                            child: carouselCard(
                              'lib/assets/images/req.png',
                              'REQUIREMENTS',
                              'See DLSL application requirements here.'
                            )
                          ),
                          
                          InkWell(
                            onTap: () async {
                              //Navigator.of(context).pushNamed('Paymentfaci');
                            },
                            
                            child: carouselCard(
                              'lib/assets/images/pay.png',
                              'PAYMENT FACILITIES',
                              'Discover convenient ways to pay.'
                            )
                          ),
                        ],

                      )
                    )
                  ],
                )
              )

            ],
          )

        )
      )

    );
  }

  Card carouselCard(String imgAsset, String title, String subtitle) {
    return Card( 
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),   

      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB( 0, 0, 0, 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imgAsset, 
                width: 47,
                height: 57,
                fit: BoxFit.none,
              )
            )
          ),

          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              letterSpacing: 0,
            )
          ),

          const Divider(
            color: Colors.transparent,
            thickness: 1,
          ),

          Text(
            subtitle, 
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              letterSpacing: 0,
            )
          )
        ],                
      ),

    );
  }

  AppBar appBar() {
    return AppBar(
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
    );
  }
}