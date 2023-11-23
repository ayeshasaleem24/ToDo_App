import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://cdn.cabincrewwings.com/wp-content/uploads/2021/11/Blue-American-Flag-Independence-Day-Instagram-Post.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Ayesha Saleem',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '10 tasks left',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 16),
                Text(
                  '5 tasks done',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 16),
            Card(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildIconBox(Icons.settings, 'App Settings'   ),
                  _buildIconBox(Icons.person, 'Change Account Name'),
                  _buildIconBox(Icons.lock, 'Change account password'),
                  _buildIconBox(Icons.image, 'Change account image'),
                  _buildIconBox(Icons.help, 'FAQ'),
                  _buildIconBox(Icons.info, 'About Us'),
                  _buildIconBox(Icons.feedback, 'Help & Feedback'),
                  _buildIconBox(Icons.thumb_up, 'Support Us'),
                  _buildIconBox(Icons.logout, 'Log out'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconBox(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
    );
  }
}