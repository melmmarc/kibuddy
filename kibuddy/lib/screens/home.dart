import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';

import 'chat.dart'; // Import chat.dart file

class MyApp extends StatelessWidget {
  const MyApp({super.key, Key? key4});

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
    Key? key5,
    required this.greenToggledOn,
    required this.yellowToggledOn,
    required this.redToggledOn,
    required this.purpleToggledOn,
  });

  Future<Uint8List> loadBackgroundImage() async {
    final ByteData data =
        await rootBundle.load('assets/images/whatsapp-bg-50.png');
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Suchen',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Border radius of 20px
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0), // Half the original height
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
                      child: Material(
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            width: 48, // Adjust the size as needed
                            height: 48, // Adjust the size as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 148, 148, 148),
                                width: 1.0, // Border width
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/megan-fox.webp'),
                            ),
                          ),
                          title: const Text(
                            'Megan', // Replace with appropriate text
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Ja, kein Problem. Viel Spaß euch...', // Replace with appropriate text
                          ),
                        ),
                      )),
                  const SizedBox(height: 2), // Add some space between boxes
                  GestureDetector(
                      onTap: () {
                        // Add onTap functionality for the second box
                      },
                      child: Material(
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            width: 48, // Adjust the size as needed
                            height: 48, // Adjust the size as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 148, 148, 148),
                                width: 1.0, // Border width
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/jenniferlawrence.jpeg'),
                            ),
                          ),
                          title: const Text(
                            'Jennifer', // Replace with appropriate text
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Ok', // Replace with appropriate text
                          ),
                        ),
                      )),
                  const SizedBox(height: 2), // Add some space between boxes
                  GestureDetector(
                      onTap: () {
                        // Add onTap functionality for the third box
                      },
                      child: Material(
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            width: 48, // Adjust the size as needed
                            height: 48, // Adjust the size as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 148, 148, 148),
                                width: 1.0, // Border width
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/benaffleck.jpeg'),
                            ),
                          ),
                          title: const Text(
                            'Ben', // Replace with appropriate text
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Ja, sehe ich genau so.', // Replace with appropriate text
                          ),
                        ),
                      )),
                  const SizedBox(height: 2), // Add some space between boxes
                  GestureDetector(
                      onTap: () {
                        // Add onTap functionality for the fourth box
                      },
                      child: Material(
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            width: 48, // Adjust the size as needed
                            height: 48, // Adjust the size as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 148, 148, 148),
                                width: 1.0, // Border width
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/taylorswift.png'),
                            ),
                          ),
                          title: const Text(
                            'Taylor', // Replace with appropriate text
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Denk an den Termin morgen.', // Replace with appropriate text
                          ),
                        ),
                      )),
                  const SizedBox(height: 2), // Add some space between boxes
                  GestureDetector(
                      onTap: () {
                        // Add onTap functionality for the third box
                      },
                      child: Material(
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            width: 48, // Adjust the size as needed
                            height: 48, // Adjust the size as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 148, 148, 148),
                                width: 1.0, // Border width
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/markwahlberg.jpg'),
                            ),
                          ),
                          title: const Text(
                            'Mark', // Replace with appropriate text
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Bis morgen.', // Replace with appropriate text
                          ),
                        ),
                      )),
                  const SizedBox(height: 2), // Add some space between boxes
                  GestureDetector(
                      onTap: () {
                        // Add onTap functionality for the fourth box
                      },
                      child: Material(
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            width: 48, // Adjust the size as needed
                            height: 48, // Adjust the size as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 148, 148, 148),
                                width: 1.0, // Border width
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/helenefischer.jpeg'),
                            ),
                          ),
                          title: const Text(
                            'Helene', // Replace with appropriate text
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Bist du morgen dabei?', // Replace with appropriate text
                          ),
                        ),
                      )),
                  const SizedBox(height: 2), // Add some space between boxes
                  GestureDetector(
                      onTap: () {
                        // Add onTap functionality for the fourth box
                      },
                      child: Material(
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            width: 48, // Adjust the size as needed
                            height: 48, // Adjust the size as needed
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 148, 148, 148),
                                width: 1.0, // Border width
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/morganfreeman.avif'),
                            ),
                          ),
                          title: const Text(
                            'Morgan', // Replace with appropriate text
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Sonntag steht noch?', // Replace with appropriate text
                          ),
                        ),
                      )),
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
                  width: 20,
                  height: 20,
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
