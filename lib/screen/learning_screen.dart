import 'package:flutter/material.dart';
import 'learning_details_screen.dart';


class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});


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
          'Learning',
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
                    Icons.menu_book_rounded,
                    color: pink,
                    size: 30,
                  ),
                ),


                SizedBox(width: 15),


                Expanded(
                  child: Text(
                    'Start Learning',
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
            'Build useful skills through practical learning '
            'resources and educational content.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              height: 1.5,
            ),
          ),


          const SizedBox(height: 25),


          learningCard(
            context,
            'Digital Skills',
            'Learn essential digital and technology skills.',
            Icons.computer,
            'Beginner',
          ),


          learningCard(
            context,
            'Data Analytics',
            'Understand data analysis and data-driven decisions.',
            Icons.analytics_outlined,
            'Intermediate',
          ),


          learningCard(
            context,
            'Project Management',
            'Learn how to plan and manage projects effectively.',
            Icons.assignment_outlined,
            'Intermediate',
          ),


          learningCard(
            context,
            'Leadership Skills',
            'Develop communication and leadership skills.',
            Icons.groups_outlined,
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
    const pink = Color(0xFFE91E8C);
    const lightPink = Color(0xFFF8D9EA);


    return Card(
      margin: const EdgeInsets.only(bottom: 18),
      elevation: 2,
      color: Colors.white,


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
                  backgroundColor: lightPink,


                  child: Icon(
                    icon,
                    size: 30,
                    color: pink,
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
                  Icons.signal_cellular_alt,
                  size: 18,
                  color: pink,
                ),


                const SizedBox(width: 6),


                Text(
                  level,
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
                            LearningDetailsScreen(
                          title: title,
                          description: description,
                          level: level,
                        ),
                      ),
                    );
                  },


                  style: ElevatedButton.styleFrom(
                    backgroundColor: pink,
                    foregroundColor: Colors.white,
                  ),


                  child: const Text(
                    'Learn',
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
