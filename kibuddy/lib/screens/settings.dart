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
            height: 85, // Adjusted height to 85px
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10), // Add 30px margin to the left and 15px margin to the top
                      child: Image.asset(
                        'assets/images/kibuddy-circled.png', // Your image path
                        width: 50, // Adjust width as needed
                        height: 50, // Adjust height as needed
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 20), // Add 30px margin to the left and 20px margin to the top
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'KI-Buddy',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(0, -5), // Move the text 5px higher
                  child: const Padding(
                    padding: EdgeInsets.only(left: 22, top: 5), // Add 30px margin to the left
                    child: Text(
                      'Bearbeiten',
                      style: TextStyle(fontSize: 10, color: Color(0xFF3297B7),fontWeight: FontWeight.w500,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      : Container(
          height: 55, // Adjust height as needed
          color: Colors.white,
          margin: index == 1
              ? const EdgeInsets.fromLTRB(0, 0, 0, 20) // Add 20px more margin at the bottom for Box 2
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
