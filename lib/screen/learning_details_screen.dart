import 'package:flutter/material.dart';


class LearningDetailsScreen extends StatelessWidget {
  final String title;
  final String description;
  final String level;


  const LearningDetailsScreen({
    super.key,
    required this.title,
    required this.description,
    required this.level,
  });


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
          'Learning Module',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),


      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),


              decoration: BoxDecoration(
                color: lightPink,
                borderRadius: BorderRadius.circular(20),
              ),


              child: const Icon(
                Icons.menu_book_rounded,
                size: 65,
                color: pink,
              ),
            ),


            const SizedBox(height: 25),


            Text(
              title,
              style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(height: 12),


            Row(
              children: [
                const Icon(
                  Icons.school_outlined,
                  size: 20,
                  color: pink,
                ),


                const SizedBox(width: 8),


                Text(
                  level,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),


            const SizedBox(height: 25),


            const Text(
              'About This Module',
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


            const SizedBox(height: 28),


            const Text(
              'Learning Topics',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(height: 12),


            lessonItem('Introduction'),
            lessonItem('Core Concepts'),
            lessonItem('Practical Application'),
            lessonItem('Assessment'),


            const SizedBox(height: 25),


            SizedBox(
              width: double.infinity,
              height: 55,


              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Learning module started!',
                      ),
                    ),
                  );
                },


                icon: const Icon(Icons.play_arrow),


                label: const Text(
                  'Start Learning',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),


                style: ElevatedButton.styleFrom(
                  backgroundColor: pink,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget lessonItem(String title) {
    const pink = Color(0xFFE91E8C);
    const lightPink = Color(0xFFF8D9EA);


    return Card(
      margin: const EdgeInsets.only(bottom: 10),


      child: ListTile(
        leading: const Icon(
          Icons.check_circle_outline,
          color: pink,
        ),


        title: Text(title),


        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: pink,
        ),
      ),
    );
  }
}
