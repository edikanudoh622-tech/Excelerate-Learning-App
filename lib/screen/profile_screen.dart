import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


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
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),


      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),


        child: Column(
          children: [
            // Profile header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),


              decoration: BoxDecoration(
                color: lightPink,
                borderRadius: BorderRadius.circular(20),
              ),


              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person_rounded,
                      size: 50,
                      color: pink,
                    ),
                  ),


                  SizedBox(height: 15),


                  Text(
                    'Excelerate User',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF172033),
                    ),
                  ),


                  SizedBox(height: 5),


                  Text(
                    'Learner',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),


            const SizedBox(height: 25),


            // Learning progress
            Card(
              elevation: 2,


              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),


              child: Padding(
                padding: const EdgeInsets.all(20),


                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,


                  children: [
                    const Text(
                      'Learning Progress',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),


                    const SizedBox(height: 18),


                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),


                          decoration: BoxDecoration(
                            color: lightPink,
                            borderRadius:
                                BorderRadius.circular(12),
                          ),


                          child: const Icon(
                            Icons.menu_book_rounded,
                            color: pink,
                          ),
                        ),


                        const SizedBox(width: 15),


                        const Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,


                            children: [
                              Text(
                                'Courses Started',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),


                              SizedBox(height: 5),


                              Text(
                                '4 courses',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),


                        const Text(
                          '4',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: pink,
                          ),
                        ),
                      ],
                    ),


                    const SizedBox(height: 18),


                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),


                          decoration: BoxDecoration(
                            color: lightPink,
                            borderRadius:
                                BorderRadius.circular(12),
                          ),


                          child: const Icon(
                            Icons.check_circle_outline,
                            color: pink,
                          ),
                        ),


                        const SizedBox(width: 15),


                        const Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,


                            children: [
                              Text(
                                'Completed',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),


                              SizedBox(height: 5),


                              Text(
                                '2 courses',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),


                        const Text(
                          '2',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: pink,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


            const SizedBox(height: 20),


            // Account options
            Card(
              elevation: 2,


              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),


              child: Column(
                children: [
                  profileOption(
                    icon: Icons.person_outline,
                    title: 'Account Information',
                    onTap: () {},
                  ),


                  const Divider(height: 1),


                  profileOption(
                    icon: Icons.notifications_outlined,
                    title: 'Notifications',
                    onTap: () {},
                  ),


                  const Divider(height: 1),


                  profileOption(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                    onTap: () {},
                  ),


                  const Divider(height: 1),


                  profileOption(
                    icon: Icons.help_outline,
                    title: 'Help & Support',
                    onTap: () {},
                  ),
                ],
              ),
            ),


            const SizedBox(height: 25),


            // Logout
            SizedBox(
              width: double.infinity,
              height: 52,


              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },


                icon: const Icon(
                  Icons.logout,
                  color: pink,
                ),


                label: const Text(
                  'Log Out',
                  style: TextStyle(
                    color: pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: pink,
                  ),


                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget profileOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    const pink = Color(0xFFE91E8C);
    const lightPink = Color(0xFFF8D9EA);


    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 5,
      ),


      leading: Container(
        padding: const EdgeInsets.all(10),


        decoration: BoxDecoration(
          color: lightPink,
          borderRadius: BorderRadius.circular(10),
        ),


        child: Icon(
          icon,
          color: pink,
        ),
      ),


      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),


      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: pink,
      ),


      onTap: onTap,
    );
  }
}
