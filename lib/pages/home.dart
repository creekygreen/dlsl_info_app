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

          // Portion 1 of Homepage. Consists of the heading an the Carousel Slider
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
                    sloganHeader('Be a Lasallian!', 'Take the first step here. Discover your possibilities'),
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

                            child: infoCard(
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

                            child: infoCard(
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
                            
                            child: infoCard(
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

              // Latest News Portion
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 450,
                decoration: const BoxDecoration(
                  color: Colors.white
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    newsHeader('Latest News and Events', 'Stay connected. Be the first to know about exciting opportunities and activities'),
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

                            child: newsCard(
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

                            child: newsCard(
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

Card newsCard(String imgAsset, String date, String description) {
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      
      child: Container(
        width: 200,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              imgAsset,
            ).image,
          ),
        ),
        
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [
            Padding(
              padding: 
              const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Text(
                date,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  letterSpacing: 0,
                )
              )
            )

          ],
        )

      )

  );
}

Column sloganHeader(String title, String subtitle) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        //padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
        child: Text(
          title, 
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            letterSpacing: 0,
            fontWeight: FontWeight.bold,
          )
        )
      ),
      
      // Homepage intro subheader
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 0,
          )
        ),
      ),
    ],
  );
}

Column newsHeader(String title, String subtitle) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Text(
          title, 
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            letterSpacing: 0,
            fontWeight: FontWeight.bold,
          )
        )
      ),
      
      // Homepage intro sub header
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            letterSpacing: 0,
          )
        ),
      ),
    ],
  );
}

Card infoCard(String imgAsset, String title, String subtitle) {
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

      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(                
            color: Colors.black,
            letterSpacing: 0,
          )
        ),
      ),

      const Divider(
        color: Colors.transparent,
        thickness: 1,
      ),

      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Text(
          subtitle,               
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            letterSpacing: 0,
          )
        ),
      )
      
    ],                
  ),

);
}


      
  
}

