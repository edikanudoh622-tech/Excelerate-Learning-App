import 'package:flutter/material.dart';
import 'programs_screen.dart';
import 'learning_screen.dart';
import 'announcements_screen.dart';
import 'feedback_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    DashboardPage(),
    ProgramsScreen(),
    LearningScreen(),
    AnnouncementsScreen(),
    FeedbackScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,

        indicatorColor: const Color(0xFFF8D9EA),

        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(
              Icons.home,
              color: Color(0xFFE91E8C),
            ),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(
              Icons.explore,
              color: Color(0xFFE91E8C),
            ),
            label: 'Programs',
          ),

          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(
              Icons.menu_book,
              color: Color(0xFFE91E8C),
            ),
            label: 'Learning',
          ),

          NavigationDestination(
            icon: Icon(Icons.notifications_outlined),
            selectedIcon: Icon(
              Icons.notifications,
              color: Color(0xFFE91E8C),
            ),
            label: 'Updates',
          ),

          NavigationDestination(
            icon: Icon(Icons.feedback_outlined),
            selectedIcon: Icon(
              Icons.feedback,
              color: Color(0xFFE91E8C),
            ),
            label: 'Feedback',
          ),
        ],
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Excelerate',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const AnnouncementsScreen(),
                ),
              );
            },
          ),

          IconButton(
            icon: const Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const ProfileScreen(),
                ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome! 👋',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Explore programs, learn new skills and stay updated.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            // Pink main feature section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),

              decoration: BoxDecoration(
                color: const Color(0xFFE91E8C),
                borderRadius: BorderRadius.circular(18),
              ),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.school,
                    size: 45,
                    color: Colors.white,
                  ),

                  SizedBox(height: 15),

                  Text(
                    'Discover Your Next Opportunity',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Find programs designed to help you '
                    'develop your skills and achieve your goals.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'What would you like to do?',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            dashboardCard(
              context,
              Icons.explore,
              'Explore Programs',
              'Discover available programs and opportunities.',
              const ProgramsScreen(),
            ),

            dashboardCard(
              context,
              Icons.menu_book,
              'Start Learning',
              'Access learning materials and develop new skills.',
              const LearningScreen(),
            ),

            dashboardCard(
              context,
              Icons.notifications,
              'Latest Announcements',
              'Stay informed about important updates.',
              const AnnouncementsScreen(),
            ),

            dashboardCard(
              context,
              Icons.feedback,
              'Give Feedback',
              'Share your experience and suggestions.',
              const FeedbackScreen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget dashboardCard(
    BuildContext context,
    IconData icon,
    String title,
    String description,
    Widget destination,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 3,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: ListTile(
        contentPadding: const EdgeInsets.all(15),

        leading: CircleAvatar(
          radius: 28,
          backgroundColor: const Color(0xFFF8D9EA),
          child: Icon(
            icon,
            color: const Color(0xFFE91E8C),
          ),
        ),

        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(description),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
          color: Color(0xFFE91E8C),
        ),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => destination,
            ),
          );
        },
      ),
    );
  }
}
