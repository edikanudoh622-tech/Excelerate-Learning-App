import 'package:flutter/material.dart';

class ProgramDetailsScreen extends StatelessWidget {
  final String title;
  final String description;
  final String duration;

  const ProgramDetailsScreen({
    super.key,
    required this.title,
    required this.description,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Program Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.school,
              size: 60,
            ),

            const SizedBox(height: 20),

            Text(
              title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                const Icon(Icons.access_time),
                const SizedBox(width: 8),
                Text(
                  duration,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              'About This Program',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'What You Will Gain',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            const ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Practical skills and knowledge'),
            ),

            const ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Professional development'),
            ),

            const ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Hands-on learning experience'),
            ),

            const ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('Career development opportunities'),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Application Started'),
                        content: Text(
                          'You have selected the $title program. '
                          'Your application interest has been recorded.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Done'),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: const Icon(Icons.send),
                label: const Text(
                  'Apply for Program',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
