import 'package:flutter/material.dart';

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
      ),
      body: const Center(
        child: Text('Welcome to the chat page!'),
      ),
    );
  }
}
