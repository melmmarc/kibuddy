import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key, Key? key2});

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
        child: Column( // Use Column for vertical layout
          children: [
            AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                color: const Color(0xFF3297B7),
                onPressed: () {
                  //Navigator.of(context).pop();
                },
              ),
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: const AssetImage('assets/images/megan-fox.webp'),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Megan',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              titleSpacing: -5.0,
              actions: [
                IconButton(
                  icon: const Icon(CupertinoIcons.videocam),
                  color: const Color(0xFF3297B7),
                  iconSize: 36,
                  onPressed: () {
                    // Add functionality for camera icon
                  },
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.phone),
                  color: const Color(0xFF3297B7),
                  iconSize: 24,
                  onPressed: () {
                    // Add functionality for telephone icon
                  },
                ),
                IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Transform.translate(
                      offset: const Offset(0.0, -1.0),
                      child: Image.asset(
                        'assets/images/robot.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Add functionality for the robot icon
                  },
                ),
              ],
            ),
            // Expanded to fill remaining space
            Expanded(
              child: Container(
                // Your chat content goes here
              ),
            ),
          ],
        ),
      ),
      // Chat input bar
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(CupertinoIcons.plus_circle),
                onPressed: () {
                  // Add functionality for the plus icon
                },
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Type a message',
                      border: InputBorder.none,
                    ),
                    // Add functionality to handle text input
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(CupertinoIcons.camera),
                onPressed: () {
                  // Add functionality for the camera icon
                },
              ),
              IconButton(
                icon: const Icon(CupertinoIcons.mic),
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
