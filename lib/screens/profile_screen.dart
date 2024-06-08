import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BENSON WATHIGO',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Email: bensonwathigo21@gmail.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'My Donations:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // List of donated items
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Bread'),
              subtitle: Text('Donated on: 2023-12-01'),
            ),
          ],
        ),
      ),
    );
  }
}
