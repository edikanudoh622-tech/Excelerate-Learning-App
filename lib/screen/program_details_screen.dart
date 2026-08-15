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
    const pink = Color(0xFFE91E8C);
    const lightPink = Color(0xFFF8D9EA);


    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),


      appBar: AppBar(
        backgroundColor: pink,
        foregroundColor: Colors.white,
        title: const Text(
          'Program Details',
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
            Center(
              child: CircleAvatar(
                radius: 42,
                backgroundColor: lightPink,
                child: const Icon(
                  Icons.school,
                  size: 50,
                  color: pink,
                ),
              ),
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
                const Icon(
                  Icons.access_time,
                  color: pink,
                ),


                const SizedBox(width: 8),


                Text(
                  duration,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
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
              leading: Icon(
                Icons.check_circle,
                color: pink,
              ),
              title: Text('Practical skills and knowledge'),
            ),


            const ListTile(
              leading: Icon(
                Icons.check_circle,
                color: pink,
              ),
              title: Text('Professional development'),
            ),


            const ListTile(
              leading: Icon(
                Icons.check_circle,
                color: pink,
              ),
              title: Text('Hands-on learning experience'),
            ),


            const ListTile(
              leading: Icon(
                Icons.check_circle,
                color: pink,
              ),
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
                        title: const Text(
                          'Application Started',
                        ),


                        content: Text(
                          'You have selected the $title program. '
                          'Your application interest has been recorded.',
                        ),


                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },


                            child: const Text(
                              'Done',
                              style: TextStyle(
                                color: pink,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },


                style: ElevatedButton.styleFrom(
                  backgroundColor: pink,
                  foregroundColor: Colors.white,
                ),


                icon: const Icon(Icons.send),


                label: const Text(
                  'Apply for Program',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
