import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'program_details_screen.dart';


class ProgramsScreen extends StatefulWidget {
  const ProgramsScreen({super.key});


  @override
  State<ProgramsScreen> createState() => _ProgramsScreenState();
}


class _ProgramsScreenState extends State<ProgramsScreen> {
  late Future<List<Map<String, dynamic>>> programsFuture;


  @override
  void initState() {
    super.initState();
    programsFuture = loadPrograms();
  }


  Future<List<Map<String, dynamic>>> loadPrograms() async {
    final String jsonString =
        await rootBundle.loadString('assets/programs.json');


    final Map<String, dynamic> jsonData = json.decode(jsonString);


    final List<dynamic> programs = jsonData['programs'];


    return programs
        .map((program) => Map<String, dynamic>.from(program))
        .toList();
  }


  IconData getIcon(String iconName) {
    switch (iconName) {
      case 'computer':
        return Icons.computer;
      case 'analytics':
        return Icons.analytics;
      case 'manage_accounts':
        return Icons.manage_accounts;
      case 'groups':
        return Icons.groups;
      default:
        return Icons.school;
    }
  }


  @override
  Widget build(BuildContext context) {
    const pink = Color(0xFFFF69B4);
    const lightPink = Color(0xFFFFE4F1);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: pink,
        foregroundColor: Colors.white,
        title: const Text(
          'Programs',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: programsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }


          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 55,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Unable to load programs.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Please check the program data and try again.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          programsFuture = loadPrograms();
                        });
                      },
                      child: const Text('Try Again'),
                    ),
                  ],
                ),
              ),
            );
          }


          final programs = snapshot.data ?? [];


          return ListView(
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
                      backgroundColor: pink,
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


              ...programs.map(
                (program) => programCard(
                  context,
                  program['title'] ?? 'Program',
                  program['description'] ?? '',
                  getIcon(program['icon'] ?? ''),
                  program['duration'] ?? '',
                ),
              ),
            ],
          );
        },
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
    const pink = Color(0xFFFF69B4);
    const lightPink = Color(0xFFFFE4F1);


    return Card(
      margin: const EdgeInsets.only(bottom: 18),
      elevation: 2,
      color: Colors.white,
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
                  Icons.access_time,
                  size: 18,
                  color: pink,
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
                        builder: (context) => ProgramDetailsScreen(
                          title: title,
                          description: description,
                          duration: duration,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: pink,
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
