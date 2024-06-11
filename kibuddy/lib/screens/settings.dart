import 'package:flutter/material.dart';
import 'kibuddy.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, Key? key2});

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
    Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const KIBuddyPage(
      firstMessageClicked: false,
      secondMessageClicked: false,
      thirdMessageClicked: false,
      fourthMessageClicked: false,
    ),
  ),
);
  },
  ),
  automaticallyImplyLeading: false, // This removes the automatically generated back button
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
              child: Container(
                // Your chat content goes here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
