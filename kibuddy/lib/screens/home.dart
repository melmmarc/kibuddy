import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'chat.dart'; // Import chat.dart file

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
      home: const HomePage(
        greenToggledOn: true,
        yellowToggledOn: true,
        redToggledOn: true,
        purpleToggledOn: true,
      ),
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}

class HomePage extends StatelessWidget {
  final bool greenToggledOn;
  final bool yellowToggledOn;
  final bool redToggledOn;
  final bool purpleToggledOn;

  const HomePage({
    super.key,
    required this.greenToggledOn,
    required this.yellowToggledOn,
    required this.redToggledOn,
    required this.purpleToggledOn,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {
            // Add functionality to open drawer or navigate to menu page
          },
          color: const Color(0xFF3297B7),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 32.0),
              child: Text(
                'Chats',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF232323),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.camera),
            onPressed: () {
              // Add functionality to perform action on camera icon press
            },
            color: const Color(0xFF3297B7),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Add functionality to perform action on plus icon press
            },
            color: const Color(0xFF3297B7),
          ),
        ],
        iconTheme: const IconThemeData(color: Color(0xFF3297B7)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Suchen',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), // Border radius of 20px
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12.0), // Half the original height
              ),
              onChanged: (value) {
                // Implement search functionality here
              },
            ),
          ),
          const SizedBox(height: 16), // Add some space between search bar and boxes
          GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatPage(greenToggledOn: greenToggledOn, yellowToggledOn: yellowToggledOn, redToggledOn: redToggledOn, purpleToggledOn: purpleToggledOn, firstMessageClicked: false, secondMessageClicked: false, thirdMessageClicked: false, fourthMessageClicked: false,)), // Navigate to chat.dart
    );
  },
  child: Container(
    height: 100,
    color: Colors.red, // First box
  ),
),
          const SizedBox(height: 16), // Add some space between boxes
          Container(
            height: 100,
            color: Colors.green, // Second box
          ),
          const SizedBox(height: 16), // Add some space between boxes
          Container(
            height: 100,
            color: Colors.blue, // Third box
          ),
          Expanded(
            child: Container(), // Placeholder for the main content
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF3297B7),
        unselectedItemColor: const Color(0xFF3297B7),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/status-icon.png',
              width: 24,
              height: 24,
            ),
            label: 'Aktuelles',
          ),
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone),
            label: 'Anrufe',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Communitys',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/chatbubble.png',
              width: 24,
              height: 24,
            ),
            label: 'Chats',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Einstellungen',
          ),
        ],
      ),
    );
  }
}
