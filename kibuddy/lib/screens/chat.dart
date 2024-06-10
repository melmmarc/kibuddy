import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'kibuddy.dart';


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
        child: Column(
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
                      color: Color(0xFF232323),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              titleSpacing: -5.0,
              actions: [
                IconButton(
                  icon: const Icon(CupertinoIcons.video_camera),
                  color: const Color(0xFF3297B7),
                  iconSize: 36,
                  onPressed: () {
                    // Add functionality for video icon
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
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    icon: Transform.translate(
                      offset: const Offset(0.0, -1.0),
                      child: Image.asset(
                        'assets/images/robot.png',
                        width: 28,
                        height: 28,
                      ),
                    ),
                    onPressed: () {
                      // Navigate to the KIBuddyPage when the robot icon is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KIBuddyPage()), // Assuming KIBuddyPage is the name of your screen
                      );
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FractionallySizedBox(
                        widthFactor: 0.85, // Set width factor to 60%
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFE2FFD4),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Text(
                            'Hallo Schatz, ich freue mich dich heute Abend endlich wieder zu sehen 😁',
                            style: TextStyle(color: Color(0xFF232323), fontWeight: FontWeight.w500, fontSize: 15), // Set text color to #232323
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FractionallySizedBox(
                        widthFactor: 0.55, // Set width factor to 60%
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white, // Set background color to white
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Text(
                            'Oh ja, ich mich auch 🥰',
                            style: TextStyle(
                              color: Color(0xFF232323),
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
