import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodShare'),
      ),
      body: ListView(
        children: [
          // Example food listing
          ListTile(
            leading: Icon(Icons.fastfood),
            title: Text('Bread'),
            subtitle: Text('Available until: 2024-12-31'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, '/details');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/details');
        },
        tooltip: "To adding listings",
      ),
    );
  }
}
