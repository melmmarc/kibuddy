import 'package:flutter/material.dart';
import 'screens/chat.dart'; // Import the chat.dart file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChatPage(), // Set ChatPage as the home widget
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}
