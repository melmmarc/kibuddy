import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, Key? key3});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const ChatPage(greenToggledOn: true, yellowToggledOn: true, redToggledOn: true, purpleToggledOn: true, firstMessageClicked: true, secondMessageClicked: true, thirdMessageClicked: true, fourthMessageClicked: true,),
      home: const HomePage(greenToggledOn: true, yellowToggledOn: true, redToggledOn: true, purpleToggledOn: true), 
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}
