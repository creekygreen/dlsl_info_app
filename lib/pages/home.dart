import 'package:dlsl_info_app/pages/courses.dart';
import 'package:dlsl_info_app/pages/event1.dart';
import 'package:dlsl_info_app/pages/event2.dart';
import 'package:dlsl_info_app/pages/payment_facilities.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dlsl_info_app/global.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalFunction.dlslAppBar(context, 'DLSL Information'),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(

          // Be a Lasallian portion
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 370,
                decoration: const BoxDecoration(
                  color: Color(0xFF00872C)
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GlobalFunction.sloganHeader(
                        'Be a Lasallian!',
                        'Take the first step here. Discover your possibilities'
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          initialPage: 1,
                          viewportFraction: 0.55,
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
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const Courses()),
                                );
                            },
                            child: GlobalFunction.infoCard(
                              'lib/assets/images/appli.png',
                              'APPLICATION PROCESS',
                              'Learn more about our application process.'
                            )
                          ),
                          InkWell(
                            onTap: () async {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const Courses()),
                                );
                            },
                            child: GlobalFunction.infoCard(
                              'lib/assets/images/req.png',
                              'REQUIREMENTS',
                              'See DLSL application requirements here.'
                            )
                          ),
                          InkWell(
                            onTap: () async {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const PaymentFacilities()),);
                            },
                            child: GlobalFunction.infoCard(
                              'lib/assets/images/pay.png',
                              'PAYMENT FACILITIES',
                              'Discover convenient ways to pay.'
                            )
                          )
                        ]
                      )
                    )
                  ]
                )
              ),

              // Latest News and Events portion
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 450,
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GlobalFunction.newsHeader(
                        'Latest News and Events',
                        'Stay connected. Be the first to know about exciting opportunities and activities'
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          initialPage: 1,
                          viewportFraction: 0.75,
                          disableCenter: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.25,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: false,
                          ),
                        items: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const Event1()),);
                            },
                            child: GlobalFunction.newsCard(
                              'lib/assets/images/2024-05-17_21_49_50-Final_SupGen.png',
                              'May 17,2024',
                              'Video Message of the Superior General for the Feast of St John Baptist de La Salle [May 15,2024]'
                            )
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const Event2()),);
                            },
                            child: GlobalFunction.newsCard(
                              'lib/assets/images/2024-05-16_15_51_18-IZN_Formal.png',
                              'May 16,2024',
                              'Internationalization Workshop Takes a Look at Global Education Strategies'
                            )
                          ),
                        ]
                      )
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}





