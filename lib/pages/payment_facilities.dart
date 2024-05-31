import 'package:dlsl_info_app/global.dart';
import 'package:flutter/material.dart';

class PaymentFacilities extends StatefulWidget {
  const PaymentFacilities({super.key});

  @override
  State<PaymentFacilities> createState() => _PaymentFacilitiesState();
}

class _PaymentFacilitiesState extends State<PaymentFacilities> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalFunction.dlslAppBar(context, 'Payment Facilities'),
      body: SafeArea(
        child:
        SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset('lib/assets/images/2024-01-22_15_08_09-6.png',).image,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.darken
                      )
                    )
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 15),
                    child: Column (
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Payment Facilities',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 0,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Text(
                          'Easy Payments, Anytime, Anywhere: \n Convenient Ways to Pay',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 0,
                            fontSize: 17,
                          )
                        )
                      ]
                    )
                  )
                ),

                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 60,
                  child: TabBar(
                    controller: _tabController,
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold
                    ),
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.green,
                    indicatorWeight: 3,
                    tabs: const <Widget>[
                      Tab(
                        text: 'Online Payment',
                      ),
                      Tab(
                        text: 'Over-the-Counter',
                      )
                    ]
                  )
                ),

                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 420,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Image.asset('lib/assets/images/v2tO51hf9N5Fig6mmAZTyF3jw6JYjwnVUSlBVHnV.png'),
                      Image.asset('lib/assets/images/overthecounter.jpg')
                    ]
                  )
                ),


              ],
            ),
          )

        )
      )
    );
  }
}