import 'package:flutter/material.dart';


class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    const pink = Color(0xFFE91E8C);
    const lightPink = Color(0xFFF8D9EA);


    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),


      appBar: AppBar(
        backgroundColor: pink,
        foregroundColor: Colors.white,
        title: const Text(
          'Announcements',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),


      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(20),


            decoration: BoxDecoration(
              color: lightPink,
              borderRadius: BorderRadius.circular(18),
            ),


            child: const Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.notifications_rounded,
                    color: pink,
                    size: 30,
                  ),
                ),


                SizedBox(width: 15),


                Expanded(
                  child: Text(
                    'Latest Announcements',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF172033),
                    ),
                  ),
                ),
              ],
            ),
          ),


          const SizedBox(height: 12),


          const Text(
            'Stay informed about new programs, learning '
            'opportunities and important updates.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              height: 1.5,
            ),
          ),


          const SizedBox(height: 25),


          announcementCard(
            'New Learning Opportunities',
            'New learning resources are now available. '
                'Explore the Learning section to develop new skills.',
            Icons.school_outlined,
            'New',
          ),


          announcementCard(
            'Program Applications Open',
            'Applications are now open for selected development '
                'programs. Explore the Programs section to learn more.',
            Icons.campaign_outlined,
            'Important',
          ),


          announcementCard(
            'Keep Learning',
            'Continue developing your skills by completing '
                'your available learning modules.',
            Icons.menu_book_outlined,
            'Update',
          ),


          announcementCard(
            'Share Your Feedback',
            'Your feedback helps us improve the Next Learn '
                'learning experience.',
            Icons.feedback_outlined,
            'Reminder',
          ),
        ],
      ),
    );
  }


  Widget announcementCard(
    String title,
    String description,
    IconData icon,
    String label,
  ) {
    const pink = Color(0xFFE91E8C);
    const lightPink = Color(0xFFF8D9EA);


    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      color: Colors.white,


      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),


      child: Padding(
        padding: const EdgeInsets.all(18),


        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: lightPink,


              child: Icon(
                icon,
                color: pink,
                size: 27,
              ),
            ),


            const SizedBox(width: 15),


            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),


                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 9,
                          vertical: 5,
                        ),


                        decoration: BoxDecoration(
                          color: lightPink,
                          borderRadius: BorderRadius.circular(20),
                        ),


                        child: Text(
                          label,
                          style: const TextStyle(
                            color: pink,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),


                  const SizedBox(height: 8),


                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
