import 'package:dlsl_info_app/global.dart';
import 'package:flutter/material.dart';

class PaymentFacilities extends StatelessWidget {
  const PaymentFacilities({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: GlobalFunction.dlslAppBar(context, 'Event'),
      body: const SafeArea(
        child: 
        SingleChildScrollView(
          child: Column (
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                child: Text(
                  'Payment Facilities',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 20),
                child: Text(
                  'Easy Payments, Anytime, Anywhere: Convenient Ways to Pay',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Colors.white,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ],
          )       
        )
      )
    );
  }
}