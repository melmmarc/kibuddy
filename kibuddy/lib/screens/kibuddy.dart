import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'chat.dart';
import 'settings.dart';

class ChatBubble extends StatelessWidget {
  final String message;

  const ChatBubble({super.key, Key? key2, required this.message});

  @override
  Widget build(BuildContext context) {
    // Calculate the width based on 80% of the screen width
    final double screenWidth = MediaQuery.of(context).size.width;
    final double bubbleWidth = screenWidth * 0.8;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: bubbleWidth, // Set the width of the container
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Text(
              message,
              style: const TextStyle(
                fontSize: 15.0,
                color: Color(0xFF232323),
                fontWeight: FontWeight.w500,
              ),
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
      message = "Megan scheint sich auch auf dich zu freuen, kein Grund zur Sorge.";
    } else if (secondMessageClicked) {
      message = "Ich bin mir auch nicht ganz sicher wie ich diese Antwort deuten soll. Sei lieber etwas vorsichtig.";
    } else if (thirdMessageClicked) {
      message = "Megan scheint sauer auf dich zu sein, da sie sich auf dich gefreut hat und du kurzfristig abgesagt hast.";
    } else if (fourthMessageClicked) {
      message = "Sarkasmus! Es ist ein Problem für sie und sie wünscht euch nicht viel Spaß, sondern ist sauer.";
    } else {
      message = "Wie kann ich dir heute behilflich sein?"; // Default message if none of the buttons are clicked
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/whatsapp-bg-70.png'),
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
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
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
