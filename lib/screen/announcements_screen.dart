import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Announcements',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Latest Updates',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Stay informed about programs, learning opportunities '
            'and important updates.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 25),

          announcementCard(
            'New Learning Opportunities',
            'New learning resources and skill development '
                'opportunities are now available for learners.',
            'August 13, 2026',
            Icons.school,
          ),

          announcementCard(
            'Program Registration Update',
            'Check the available programs and review their '
                'requirements before applying.',
            'August 12, 2026',
            Icons.app_registration,
          ),

          announcementCard(
            'Important Internship Information',
            'Learners are encouraged to regularly check the '
                'platform for internship and program updates.',
            'August 10, 2026',
            Icons.info,
          ),

          announcementCard(
            'Welcome to Excelerate',
            'Welcome to the Excelerate learning and opportunity '
                'platform. Explore programs and start learning today.',
            'August 8, 2026',
            Icons.campaign,
          ),
        ],
      ),
    );
  }

  Widget announcementCard(
    String title,
    String description,
    String date,
    IconData icon,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 18),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 27,
                  child: Icon(icon),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                const Icon(
                  Icons.calendar_today,
                  size: 16,
                ),

                const SizedBox(width: 6),

                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
