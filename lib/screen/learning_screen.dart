import 'package:flutter/material.dart';
import 'learning_details_screen.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learning',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Learning Content',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            'Access resources and develop skills through '
            'structured learning materials.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 25),

          learningCard(
            context,
            'Introduction to Digital Skills',
            'Learn the fundamentals of digital tools and '
                'modern workplace technology.',
            Icons.computer,
            'Beginner',
          ),

          learningCard(
            context,
            'Data Analysis Fundamentals',
            'Understand how to collect, organize and analyze '
                'data effectively.',
            Icons.bar_chart,
            'Intermediate',
          ),

          learningCard(
            context,
            'Project Management Basics',
            'Learn how to plan, organize and successfully '
                'complete projects.',
            Icons.assignment,
            'Beginner',
          ),

          learningCard(
            context,
            'Professional Communication',
            'Improve your communication, teamwork and '
                'professional workplace skills.',
            Icons.forum,
            'Beginner',
          ),
        ],
      ),
    );
  }

  Widget learningCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
    String level,
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
                  child: Icon(
                    icon,
                    size: 30,
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
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                const Icon(
                  Icons.school,
                  size: 18,
                ),

                const SizedBox(width: 5),

                Text(level),

                const Spacer(),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LearningDetailsScreen(
                          title: title,
                          description: description,
                          level: level,
                        ),
                      ),
                    );
                  },
                  child: const Text('Learn'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
