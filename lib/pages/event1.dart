import 'package:flutter/material.dart';
import 'package:dlsl_info_app/global.dart'; 
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Event1 extends StatelessWidget {
  const Event1({super.key});
  
  @override
  Widget build(BuildContext context) {

    YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: 'OTjvaY8iJR4',
    flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
    ),
);
    
    return Scaffold(
      appBar: GlobalFunction.dlslAppBar(context, 'Event'),
      body: SafeArea(
        child: 
        SingleChildScrollView(         
          child: Container(
            decoration: const BoxDecoration(
                  color: Colors.white
            ),

            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GlobalFunction.imgDate(
                    'lib/assets/images/2024-05-17_21_49_50-Final_SupGen.png',
                    'May 17, 2024 - Office of Information and Communication, Brothers of the Christian Schools, in collaboration with DLSL Strategic Communications'
                  ),

                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                       'Video Message of the Superior General for the Feast of St John Baptist de La Salle [May 15, 2024]',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        letterSpacing: 0
                      )
                    )
                  ),
              
                  YoutubePlayer(
                    controller: controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.green,
                    progressColors: const ProgressBarColors(
                      playedColor: Colors.green,
                      handleColor: Colors.green,
                    ),
                  ),

                  Image.asset('lib/assets/images/cxi3o_1.jpg'),
                  Image.asset('lib/assets/images/cxi3o_2.jpg'),
                  Image.asset('lib/assets/images/cxi3o_3.jpg'),
                ]
              ),
            ),
          )
        )
      ) 

    );
  }
}