import 'package:flutter/material.dart';
import 'package:dlsl_info_app/global.dart'; 

class Event2 extends StatelessWidget {
  const Event2({super.key});
  
  @override
  Widget build(BuildContext context) {
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
                    'lib/assets/images/2024-05-16_15_51_18-IZN_Formal.png', 
                    'May 16, 2024 - Dfezie Tipan'
                  ),

                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      'Internationalization Workshop Takes a Look at Global Education Strategies',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        letterSpacing: 0
                      )
                    )
                  ),

                  const Text(
                    'The 1st Workshop on Internationalization took place last May 13-14, 2024, from 8:00 AM to 4:00 PM at the Nexus Atrium, 4th Floor. This event brought together educators, administrators, and internationalization experts to discuss and strategize the future of global engagement in higher education.\n\nThe workshop commenced with De La Salle Lipa Chancellor Dr. Erickson Martinez delivering the opening remarks, emphasizing the importance of internationalization in fostering global understanding and collaboration.\n\nLinkages Director Grace Sanchez provided an insightful workshop overview, outlining the key objectives and expected outcomes of the two-day event.\n\nVice Chancellor for Research and Innovation Br. Manuel Pajarillo FSC addressed the foundational question, "What is Internationalization?" His session highlighted the essence of internationalization in education, underscoring its role in enhancing cultural exchange, academic excellence, and global competitiveness.\n\nGuest Speaker Ms. Jennifer Montero detailed the essential components of an Internationalization Office. She explained how such an office can serve as a hub for coordinating international activities, supporting students and staff in global endeavors, and fostering international partnerships.\n\nThe first main session delved into four critical aspects of internationalization that include: (1) People, Program, Policies, Process; (2) Revisiting Initiatives & Issues, Opportunities, Milestones, Challenges; (3) Roles of the Internationalization Office; and (4) Understanding CMO 55 Series of 2016 and Other Mandates.\n\nDay 2 highlights dived into practical applications and strategic partnerships for internationalization.  In particular, the topics were: (1) Identifying Niche Areas/Program Matching; (2) Internationalization Academic Policies and Process; (3) Indicators for Global Institution Success; and, (4) Opportunities for Linkages and Collaborations. \n\nThe workshop concluded with closing remarks by Vice Chancellor for Academics Dr. Iezyl Torino, who summarized the key takeaways and encouraged participants to implement the insights gained. Dr. Torino emphasized the ongoing commitment required to advance internationalization efforts and the collective benefits of a globally engaged educational community. \n\nThe 1st Workshop on Internationalization provided participants with an understanding of internationalization\'s complexities and the tools needed to drive De La Salle Lipa towards greater global integration and recognition as part of its aspirational goals.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0
                    )
                  )

                ]
              ),
            ),
          )
        )
      ) 

    );
  }
}