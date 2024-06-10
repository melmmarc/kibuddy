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
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const KIBuddyPage()), // Assuming KiBuddy is the name of your screen
    );
  },
                ),
              ],
            ),
            Expanded(
              child: Container(
                // Your chat content goes here
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
