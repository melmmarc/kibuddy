import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Color(0xFF3297B7), // Custom color for the arrow icon
          onPressed: () {
            Navigator.of(context).pop(); // This will close the current screen
          },
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20, // Adjust size as needed
              backgroundColor: Colors.grey[300], // Customize background color
              backgroundImage: AssetImage('assets/images/megan-fox.webp'), // Use custom image
            ),
            const SizedBox(width: 10), // Add some space between avatar and text
            Text(
              'Megan',
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500, // Lighter bold weight
              ),
            ),
          ],
        ),
        titleSpacing: -5.0,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.videocam),
            color: Color(0xFF3297B7), // Set color for camera icon
            iconSize: 36, // Adjust the size of the icon
            onPressed: () {
              // Add functionality for camera icon
            },
          ),
          IconButton(
            icon: Icon(CupertinoIcons.phone),
            color: Color(0xFF3297B7), // Set color for telephone icon
            iconSize: 24, // Adjust the size of the icon
            onPressed: () {
              // Add functionality for telephone icon
            },
          ),
          IconButton(
  icon: Padding(
    padding: EdgeInsets.only(right: 10.0), // Add 20 pixels of padding on the right side
    child: Transform.translate(
      offset: Offset(0.0, -1.0), // Adjust the offset to move the icon higher
      child: Image.asset(
        'assets/images/robot.png', // Path to your PNG icon
        width: 28, // Adjust width as needed
        height: 28, // Adjust height as needed
      ),
    ),
  ),
  onPressed: () {
    // Add functionality for the robot icon
  },
),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the chat page!'),
      ),
    );
  }
}
