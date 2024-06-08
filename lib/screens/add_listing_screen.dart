import 'package:flutter/material.dart';

class AddListingScreen extends StatefulWidget {
  const AddListingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddListingScreenState createState() => _AddListingScreenState();
}

class _AddListingScreenState extends State<AddListingScreen> {
  final _formKey = GlobalKey<FormState>();
  String? foodItem = '';
  String? expiryDate = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Food Listing'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Food Item'),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a food item';
                  }
                  return null;
                },
                onSaved: (value) {
                  foodItem = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Expiry Date'),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter an expiry date';
                  }
                  return null;
                },
                onSaved: (value) {
                  expiryDate = value;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();
                    // Save the listing to database
                    Navigator.pop(context);
                  }
                },
                child: const Text('Add Listing'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
