import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/add_listing_screen.dart';
import 'screens/listing_details_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(FoodShareApp());
}

class FoodShareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodShare',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/add': (context) => AddListingScreen(),
        '/details': (context) => ListingDetailsScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
