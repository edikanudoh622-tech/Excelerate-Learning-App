import 'package:flutter/material.dart';

class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          const Text(
            'Explore Programs',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Discover opportunities that can help you develop '
            'your skills and gain practical experience.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
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
                  radius: 28,
                  child: Icon(icon, size: 30),
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
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 18,
                ),

                const SizedBox(width: 5),

                Text(duration),

                const Spacer(),

                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(title),
                          content: Text(
                            'This program provides learners with '
                            'practical knowledge and skills. '
                            'You can explore the learning content '
                            'and participate in the program.',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('View Details'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
