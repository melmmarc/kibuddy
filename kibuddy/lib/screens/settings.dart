import 'package:flutter/material.dart';
// ignore: unused_import
import 'kibuddy.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/whatsapp-bg.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                color: const Color(0xFF3297B7),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              automaticallyImplyLeading: false,
              title: const Text(
                'Einstellungen',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF232323),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6, // Number of white boxes
                itemBuilder: (context, index) {
  return index == 0
      ? Transform.translate(
          offset: const Offset(0, -20),
          child: Container(
            height: 85, // Adjust height as needed
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 5),
            child: Center(
              child: Text(
                'Box ${index + 1}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        )
      : Container(
          height: 55, // Adjust height as needed
          color: Colors.white,
          margin: index == 1
              ? const EdgeInsets.fromLTRB(0, 0, 0, 20) // Add 30px more margin at the bottom for Box 2
              : const EdgeInsets.symmetric(vertical: 2), // Standard margin
          child: Center(
            child: Text(
              'Box ${index + 1}',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        );
},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
