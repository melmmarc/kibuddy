// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';

import 'chat.dart'; // Import chat.dart file

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

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
    Key? key,
    required this.greenToggledOn,
    required this.yellowToggledOn,
    required this.redToggledOn,
    required this.purpleToggledOn,
  });

  Future<Uint8List> loadBackgroundImage() async {
    final ByteData data = await rootBundle.load('assets/images/whatsapp-bg-70.png');
    return data.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List>(
      future: loadBackgroundImage(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return const Center(child: Text('Error loading background image'));
        }
        final backgroundImage = snapshot.data!;
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
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image.memory(
                backgroundImage,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPage(
                            greenToggledOn: greenToggledOn,
                            yellowToggledOn: yellowToggledOn,
                            redToggledOn: redToggledOn,
                            purpleToggledOn: purpleToggledOn,
                            firstMessageClicked: false,
                            secondMessageClicked: false,
                            thirdMessageClicked: false,
                            fourthMessageClicked: false,
                          ),
                        ), // Navigate to chat.dart
                      );
                    },
                    child: const Material(
                      color: Colors.white,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/megan-fox.webp'),
                        ),
                        title: Text(
                          'Megan', // Replace with appropriate text
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Ja, kein Problem. Viel Spaß euch...'), // Replace with appropriate text
                      ),
                    ),
                  ),
                  const SizedBox(height: 2), // Add some space between boxes
                  GestureDetector(
                    onTap: () {
                      // Add onTap functionality for the second box
                    },
                    child: const Material(
                      color: Colors.white,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/jenniferlawrence.jpeg'),
                        ),
                        title: Text(
                          'Jennifer', // Replace with appropriate text
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Ok'), // Replace with appropriate text
                      ),
                    ),
                  ),
                  const SizedBox(height: 2), // Add some space between boxes
                  Container(
                    height: 80,
                    color: Colors.white,
                    child: const Material(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/benaffleck.jpeg'),
                        ),
                        title: Text(
                          'Ben',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('Ja, sehe ich genau so.'), // Add appropriate subtitle here
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(), // Placeholder for the main content
                  ),
                ],
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
                  width: 26,
                  height: 26,
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
      },
    );
  }
}
