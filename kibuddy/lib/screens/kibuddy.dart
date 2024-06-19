import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'chat.dart';
import 'settings.dart';
import 'package:intl/intl.dart';

class ChatBubble extends StatelessWidget {
  final String message;

  const ChatBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double bubbleWidth = screenWidth * 0.8;

    String timestamp = DateFormat.Hm().format(DateTime.now());

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: bubbleWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message,
                      style: const TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFF232323),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: -8.0, // Adjust as needed to position the timestamp
                  right: 0.0,
                  child: Text(
                    timestamp,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFF7f9969),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KIBuddyPage extends StatelessWidget {
  final bool firstMessageClicked;
  final bool secondMessageClicked;
  final bool thirdMessageClicked;
  final bool fourthMessageClicked;

  final bool greenToggledOn;
  final bool yellowToggledOn;
  final bool redToggledOn;
  final bool purpleToggledOn;

  const KIBuddyPage({
    super.key,
    required this.firstMessageClicked,
    required this.secondMessageClicked,
    required this.thirdMessageClicked,
    required this.fourthMessageClicked,
    required this.greenToggledOn,
    required this.yellowToggledOn,
    required this.redToggledOn,
    required this.purpleToggledOn,
  });

  @override
  Widget build(BuildContext context) {
    String message;
    if (firstMessageClicked) {
      message =
          "Megan scheint sich auch auf dich zu freuen, kein Grund zur Sorge.";
    } else if (secondMessageClicked) {
      message =
          "Ich bin mir auch nicht ganz sicher wie ich diese Antwort deuten soll. Sei lieber etwas vorsichtig.";
    } else if (thirdMessageClicked) {
      message =
          "Megan scheint sauer auf dich zu sein, da sie sich auf dich gefreut hat und du kurzfristig abgesagt hast.";
    } else if (fourthMessageClicked) {
      message =
          "Sarkasmus! Es ist ein Problem für sie und sie wünscht euch nicht viel Spaß, sondern ist sauer.";
    } else {
      message =
          "Wie kann ich dir behilflich sein?"; // Default message if none of the buttons are clicked
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/whatsapp-bg-50.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  color: const Color(0xFF3297B7),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatPage(
                          firstMessageClicked: false,
                          secondMessageClicked: false,
                          thirdMessageClicked: false,
                          fourthMessageClicked: false,
                          greenToggledOn: greenToggledOn,
                          yellowToggledOn: yellowToggledOn,
                          redToggledOn: redToggledOn,
                          purpleToggledOn: purpleToggledOn,
                        ),
                      ),
                    );
                  },
                ),
                automaticallyImplyLeading: false,
                title: const Text(
                  'KI-Buddy',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF232323),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    iconSize: 28,
                    color: const Color(0xFF3297B7),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(
                            greenToggledOn: greenToggledOn,
                            yellowToggledOn: yellowToggledOn,
                            redToggledOn: redToggledOn,
                            purpleToggledOn: purpleToggledOn,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Transform.translate(
                  offset: const Offset(0.0, -30.0),
                  child: Transform.scale(
                    scale: 0.8,
                    child: Container(
                      width: double.infinity,
                      height: 450,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/kibuddy-body.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(0.0, -55.0), // Adjust the vertical offset
                child: ChatBubble(
                  message: message,
                ),
              ),
              Expanded(
                child: Container(
                    // Your chat content goes here
                    ),
              ),
            ],
          ),
        ],
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
                padding: const EdgeInsets.only(left: 0, right: 0),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Theme(
                    data: ThemeData(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      primaryColor: Colors.grey,
                    ),
                    child: SizedBox(
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '',
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
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
