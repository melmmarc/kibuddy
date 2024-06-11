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
                      padding: const EdgeInsets.only(left: 25, top: 10), // Add 25px margin to the left and 10px margin to the top
                      child: Image.asset(
                        'assets/images/kibuddy-circled.png', // Your image path
                        width: 50, // Adjust width as needed
                        height: 50, // Adjust height as needed
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 20), // Add 20px margin to the left and 20px margin to the top
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
                    padding: EdgeInsets.only(left: 22, top: 5), // Add 22px margin to the left and 5px margin to the top
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
          child: index == 1
              ? const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25), // Add 25px margin to the left
                      child: Icon(
                        Icons.language, // iOS language/world icon
                        color: Color(0xFF3297B7), // Adjust icon color as needed
                      ),
                    ),
                    SizedBox(width: 15), // Add spacing between the icon and the text
                    Text(
                      'Sprache',
                      style: TextStyle(fontSize: 16, color: Color(0xFF232323), fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text(
                      'Deutsch', // Text next to the arrow pointing right
                      style: TextStyle(fontSize: 16, color: Color(0xFFC8C7CC), fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10), // Add spacing between the text and the arrow
                    Padding(
                      padding: EdgeInsets.only(right: 25), // Add 25px margin to the right
                      child: Icon(
                        Icons.arrow_forward_ios, // iOS arrow pointing to the right
                        size: 20,
                        color: Color(0xFFC8C7CC), // Adjust icon color as needed
                      ),
                    ),
                  ],
                )
              : Center(
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
