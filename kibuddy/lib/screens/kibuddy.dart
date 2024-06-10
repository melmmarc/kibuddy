import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'chat.dart';
import 'settings.dart';

class KIBuddyPage extends StatelessWidget {
  const KIBuddyPage({super.key, Key? key2});

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
      MaterialPageRoute(builder: (context) => const ChatPage()), // Assuming KiBuddy is the name of your screen
    );
  },
  ),
  automaticallyImplyLeading: false, // This removes the automatically generated back button
  title: const Text(
    'KI-Buddy',
    style: TextStyle(
      fontSize: 22,
      color: Color(0xFF232323),
      fontWeight: FontWeight.w600,
    ),
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.settings),
      iconSize: 28,
      color: const Color(0xFF3297B7),
      onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingsPage()), // Assuming KiBuddy is the name of your screen
    );
  },
    ),
  ],
),

            Expanded(
              child: Container(
                // Your chat content goes here
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(CupertinoIcons.plus),
                color: const Color(0xFF3297B7),
                onPressed: () {
                  // Add functionality for the plus icon
                },
                padding: const EdgeInsets.only(left: 0, right: 0), // Add padding to move the icon to the left
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Theme(
                    data: ThemeData(
                      // Customizing the highlight color to transparent
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      primaryColor: Colors.grey,
                    ),
                    child: SizedBox(
                      height: 30, // Set the height of the text input field
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '',
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        // Add functionality to handle text input
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(CupertinoIcons.camera),
                color: const Color(0xFF3297B7),
                onPressed: () {
                  // Add functionality for the camera icon
                },
              ),
              IconButton(
                icon: const Icon(CupertinoIcons.mic),
                color: const Color(0xFF3297B7),
                onPressed: () {
                  // Add functionality for the microphone icon
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
