import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              color: Color(0xFF3297B7), // Custom color for the arrow icon
              onPressed: () {
                Navigator.of(context).pop(); // This will close the current screen
              },
            ),
            const SizedBox(width: 0), // Add space between icons
            CircleAvatar(
              radius: 20, // Adjust size as needed
              backgroundColor: Colors.grey[300], // Customize background color
              child: Icon(Icons.person), // Optionally, you can add an icon or image
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Welcome to the chat page!'),
      ),
    );
  }
}
