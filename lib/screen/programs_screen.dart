import 'package:flutter/material.dart';
import 'program_details_screen.dart';

class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const purple = Color(0xFF6C4CE6);
    const lightPurple = Color(0xFFE9E3FF);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Programs',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: lightPurple,
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: purple,
                  child: Icon(
                    Icons.explore,
                    color: Colors.white,
                    size: 30,
                  ),
                ),

                SizedBox(width: 15),

                Expanded(
                  child: Text(
                    'Explore Programs',
                    style: TextStyle(
                      fontSize: 25,
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
            'Discover opportunities that can help you develop '
            'your skills and gain practical experience.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 25),

          programCard(
            context,
            'Digital Skills Program',
            'Develop essential digital and technology skills '
                'through practical learning.',
            Icons.computer,
            '8 Weeks',
          ),

          programCard(
            context,
            'Data Analytics Program',
            'Learn how to work with data, analyze information '
                'and make data-driven decisions.',
            Icons.analytics,
            '10 Weeks',
          ),

          programCard(
            context,
            'Project Management Program',
            'Develop skills in planning, organizing and '
                'managing projects effectively.',
            Icons.manage_accounts,
            '6 Weeks',
          ),

          programCard(
            context,
            'Leadership & Career Development',
            'Build communication, leadership and professional '
                'skills for your career.',
            Icons.groups,
            '8 Weeks',
          ),
        ],
      ),
    );
  }

  Widget programCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
    String duration,
  ) {
    const purple = Color(0xFF6C4CE6);
    const lightPurple = Color(0xFFE9E3FF);

    return Card(
      margin: const EdgeInsets.only(bottom: 18),
      elevation: 3,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: lightPurple,

                  child: Icon(
                    icon,
                    size: 30,
                    color: purple,
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 19,
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
                height: 1.4,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 18,
                  color: purple,
                ),

                const SizedBox(width: 5),

                Text(
                  duration,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const Spacer(),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProgramDetailsScreen(
                          title: title,
                          description: description,
                          duration: duration,
                        ),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    foregroundColor: Colors.white,
                  ),

                  child: const Text(
                    'View Details',
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
