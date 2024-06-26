import 'package:flutter/material.dart';
import 'package:dlsl_info_app/pages/home.dart';

class GlobalFunction {
  static ElevatedButton newMoreButton(BuildContext context, String btnName, String msg) {
    return ElevatedButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Text(
              msg
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: Text(btnName),
    );
  }
  static Container revCourseContainer(BuildContext context, String imgAsset, String text, String subtext) {
    return Container(
        width: double.infinity,
        height: 150,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF008635),
                Color(0xFF65BB3C)
              ],
              stops: [0, 1],
              begin: AlignmentDirectional(-1, 0),
              end: AlignmentDirectional(1, 0),
            )
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    text,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    )
                ),
                Text(
                    subtext,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        letterSpacing: 0,
                        fontSize: 15
                    )
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: GlobalFunction.newMoreButton(context, 'View', 'To see more details about this course, please visit the official DLSL website.'),
                )
              ],
            ),
            ClipRect(
              child: Image.asset(
                  imgAsset,
                  width: 100,
                  height: 200,
                  fit: BoxFit.cover
              )
            ),
          ],
        )
    );
  }
  static Container courseContainer(BuildContext context, String imgAsset, String text, String subtext) {
    return Container(
        width: double.infinity,
        height: 150,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF008635),
                Color(0xFF65BB3C)
              ],
              stops: [0, 1],
              begin: AlignmentDirectional(1, 0),
              end: AlignmentDirectional(-1, 0),
            )
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRect(
                child: Image.asset(
                    imgAsset,
                    width: 100,
                    height: 200,
                    fit: BoxFit.cover
                )
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  )
                ),
                Text(
                  subtext,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    letterSpacing: 0,
                      fontSize: 15
                  )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: GlobalFunction.newMoreButton(context, 'View', 'To see more details about this course, please visit the official DLSL website.'),
                )
              ],
            )
          ],
        )
    );
  }
  static Row courseRow(String imgAsset, String text, String subtext) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRect(
            child: Image.asset(
                imgAsset,
                width: 135,
                height: 200,
                fit: BoxFit.cover
            )
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Text(
                  text,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    letterSpacing: 0,
                  ),
                )
            ),
            Text(
                subtext,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  letterSpacing: 0,
                )
            ),
            Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child:
                ElevatedButton(
                    onPressed: () {},
                    child: const Text('View')
                )
            )
          ],
        )
      ],
    );
  }
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
  static Column imgDate(String imgAsset, String date) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(0, 0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imgAsset,
                fit: BoxFit.fitWidth,
              )
          )
        ),
        Align(
          alignment: const AlignmentDirectional(-1, 0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
            child: Text(
                date,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    letterSpacing: 0
                )
            ),
          ),
        )
      ],
    );
  }
  static Card newsCard(String imgAsset, String date, String description) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: Container(
        width: 200,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(imgAsset).image,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken
            )
          )
        ),
      
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                child: Text(
                  date,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),               
              Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    letterSpacing: 0
                  )
              )
            ]
          ),
        )     
      )
    );
  }
  static Column sloganHeader(String title, String subtitle) {
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
  static Column newsHeader(String title, String subtitle) {
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
  static Card infoCard(String imgAsset, String title, String subtitle) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsetsDirectional.fromSTEB( 0, 0, 0, 5),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imgAsset,
                    width: 50,
                    height: 50
                  )
              )
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
            child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold
                )
            ),
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
