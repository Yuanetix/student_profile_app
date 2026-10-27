import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F8),
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Profile Avatar (Visual Change 1: Elevated container with decorative avatar)
                const Center(
                  child: CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.indigo,
                    child: CircleAvatar(
                      radius: 54,
                      backgroundColor: Color(0xFF3949AB),
                      child: Text(
                        'YM',
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Student Name and Course
                const Text(
                  'Yuan Misoles',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                    letterSpacing: 0.3,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'BS Information Technology',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 24),

                // Student Details (Visual Change 2: Styled Card with rounded corners and elevation)
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.badge, color: Colors.indigo),
                          title: Text(
                            'Student Number',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text('555062'),
                        ),
                        Divider(height: 1, indent: 16, endIndent: 16),
                        ListTile(
                          leading: Icon(Icons.school, color: Colors.indigo),
                          title: Text(
                            'Year Level and Section',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text('3rd Year - CCE106'),
                        ),
                        Divider(height: 1, indent: 16, endIndent: 16),
                        ListTile(
                          leading: Icon(Icons.email, color: Colors.indigo),
                          title: Text(
                            'Email Address',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text('y.misoles.555062@umindanao.edu.ph'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // About Me Section
                Row(
                  children: const [
                    Icon(Icons.person, color: Colors.indigo, size: 22),
                    SizedBox(width: 8),
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'I am a 3rd-year Information Technology student passionate about software '
                      'development and mobile app engineering. I enjoy learning modern frameworks '
                      'and building intuitive, impactful digital experiences.',
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Hobbies and Interests Section (Visual Change 3: Themed Chips with icons)
                Row(
                  children: const [
                    Icon(Icons.interests, color: Colors.indigo, size: 22),
                    SizedBox(width: 8),
                    Text(
                      'Hobbies and Interests',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(
                      avatar: Icon(Icons.code, size: 18, color: Colors.indigo),
                      label: Text('Coding'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.sports_esports, size: 18, color: Colors.indigo),
                      label: Text('Gaming'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.sports_tennis, size: 18, color: Colors.indigo),
                      label: Text('Badminton'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.menu_book, size: 18, color: Colors.indigo),
                      label: Text('Reading'),
                      backgroundColor: Colors.white,
                    ),
                    Chip(
                      avatar: Icon(Icons.music_note, size: 18, color: Colors.indigo),
                      label: Text('Music'),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
