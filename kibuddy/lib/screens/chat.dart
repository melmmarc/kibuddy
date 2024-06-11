import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'kibuddy.dart';
import 'home.dart';

class ChatPage extends StatefulWidget {
  final bool greenToggledOn;
  final bool yellowToggledOn;
  final bool redToggledOn;
  final bool purpleToggledOn;
  final bool firstMessageClicked;
  final bool secondMessageClicked;
  final bool thirdMessageClicked;
  final bool fourthMessageClicked;

  const ChatPage({
    super.key,
    required this.greenToggledOn,
    required this.yellowToggledOn,
    required this.redToggledOn,
    required this.purpleToggledOn,
    required this.firstMessageClicked,
    required this.secondMessageClicked,
    required this.thirdMessageClicked,
    required this.fourthMessageClicked,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  bool _isFirstGreyBubbleVisible = false;
  bool _isSecondGreyBubbleVisible = false;
  bool _isThirdGreyBubbleVisible = false;
  bool _isFourthGreyBubbleVisible = false;

  @override
  Widget build(BuildContext context) {
    bool greenToggledOn = widget.greenToggledOn;
    bool yellowToggledOn = widget.yellowToggledOn;
    bool redToggledOn = widget.redToggledOn;
    bool purpleToggledOn = widget.purpleToggledOn;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/whatsapp-bg-70.png'),
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
                      Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => HomePage(
      greenToggledOn: greenToggledOn,
      yellowToggledOn: yellowToggledOn,
      redToggledOn: redToggledOn,
      purpleToggledOn: purpleToggledOn,
    ),
  ),
);
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
  MaterialPageRoute(
    builder: (context) => KIBuddyPage(
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
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: FractionallySizedBox(
                          widthFactor: 0.85, // Set width factor to 85%
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFE2FFD4),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: const Text(
                              'Hallo Schatz, ich freue mich dich heute Abend endlich wieder zu sehen 😁',
                              style: TextStyle(
                                  color: Color(0xFF232323),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15), // Set text color to #232323
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: FractionallySizedBox(
                                widthFactor: 0.55,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
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
                          Positioned(
  bottom: 0,
  left: 10,
  child: GestureDetector(
    onTap: () {
      setState(() {
        _isFirstGreyBubbleVisible = !_isFirstGreyBubbleVisible;
      });
    },
    child: greenToggledOn ? Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.5), // Half of the width/height to make it a circle
        border: Border.all(
          color: const Color(0xFF00CC08), // Border color 00CC08
          width: 2, // Border width
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF00E809), // Change the color to 00E809
          shape: BoxShape.circle,
        ),
      ),
    ) : const SizedBox(), // if greenToggledOn is false, render an empty SizedBox
  ),
),

                        ],
                      ),
                    ),
                    
                    
                    GestureDetector(
  onTap: () {
    Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => KIBuddyPage(
      firstMessageClicked: true,
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
  child: AnimatedOpacity(
    opacity: _isFirstGreyBubbleVisible ? 1.0 : 0.0,
    duration: const Duration(milliseconds: 300),
    child: _isFirstGreyBubbleVisible
        ? Align(
            alignment: Alignment.centerRight,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5, // Set the width
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Text(
                          'Sie freut sich auch.',
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
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/kibuddy-face.png',
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
          )
        : Container(),
  ),
),


                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FractionallySizedBox(
                        widthFactor: 0.75, // Set width factor to 75%
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFE2FFD4),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Text(
                            'Ich schreib dir nochmal wenn ich Feierabend habe und losfahre',
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
                  Align(
  alignment: Alignment.centerLeft,
  child: Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FractionallySizedBox(
            widthFactor: 0.35,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: const Text(
                'Ja, mach das',
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
      Positioned(
        bottom: 0,
        left: 10,
        child: Visibility(
          visible: yellowToggledOn,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isSecondGreyBubbleVisible = !_isSecondGreyBubbleVisible;
              });
            },
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.5), // Half of the width/height to make it a circle
                border: Border.all(
                  color: const Color(0xFFF8DF07), // Border color F8DF07
                  width: 2, // Border width
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFBEE7A), // Circle color FBEE7A
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  ),
),


GestureDetector(
  onTap: () {
    Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => KIBuddyPage(
      firstMessageClicked: false,
      secondMessageClicked: true,
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
  child: AnimatedOpacity(
    opacity: _isSecondGreyBubbleVisible ? 1.0 : 0.0,
    duration: const Duration(milliseconds: 300),
    child: _isSecondGreyBubbleVisible
        ? Align(
            alignment: Alignment.centerRight,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FractionallySizedBox(
                      widthFactor: 0.55,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Text(
                          'Hmm... sei vorsichtig.',
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
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/kibuddy-face.png',
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
          )
        : Container(),
  ),
),




                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FractionallySizedBox(
                        widthFactor: 0.8, // Set width factor to 80%
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFE2FFD4),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Text(
                            'Hey Schatz, ich gehe heute Abend doch lieber mit meinen Freunden in eine Bar, aber morgen sehen wir uns wider, versprochen 😘',
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
                 Align(
  alignment: Alignment.centerLeft,
  child: Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FractionallySizedBox(
            widthFactor: 0.5,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: const Text(
                'Ok, wenn du meinst...',
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
      Positioned(
        bottom: 0,
        left: 10,
        child: Visibility(
          visible: redToggledOn,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isThirdGreyBubbleVisible = !_isThirdGreyBubbleVisible;
              });
            },
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.5), // Half of the width/height to make it a circle
                border: Border.all(
                  color: const Color(0xFFC80404), // Border color C80404
                  width: 2, // Border width
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFB2F2F), // Circle color FB2F2F
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  ),
),



GestureDetector(
  onTap: () {
    Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => KIBuddyPage(
      firstMessageClicked: false,
      secondMessageClicked: false,
      thirdMessageClicked: true,
      fourthMessageClicked: false,
      greenToggledOn: greenToggledOn,
      yellowToggledOn: yellowToggledOn,
      redToggledOn: redToggledOn,
      purpleToggledOn: purpleToggledOn,
    ),
  ),
);
  },
  child: AnimatedOpacity(
    opacity: _isThirdGreyBubbleVisible ? 1.0 : 0.0,
    duration: const Duration(milliseconds: 300),
    child: _isThirdGreyBubbleVisible
        ? Align(
            alignment: Alignment.centerRight,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FractionallySizedBox(
                      widthFactor: 0.55,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Text(
                          'Sie ist sauer auf dich.',
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
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/kibuddy-face.png',
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
          )
        : Container(),
  ),
),



                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FractionallySizedBox(
                        widthFactor: 0.45, // Set width factor to 45%
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFE2FFD4),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Text(
                            'Ist das ok für dich?',
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
                  
                  Align(
  alignment: Alignment.centerLeft,
  child: Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: const Text(
                'Ja, kein Problem. Viel Spaß euch...',
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
      Positioned(
        bottom: 0,
        left: 10,
        child: Visibility(
          visible: purpleToggledOn,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isFourthGreyBubbleVisible = !_isFourthGreyBubbleVisible;
              });
            },
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.5), // Half of the width/height to make it a circle
                border: Border.all(
                  color: const Color(0xFF991DFB), // Border color 991DFB
                  width: 2, // Border width
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFAD4AFC), // Circle color AD4AFC
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  ),
),


GestureDetector(
  onTap: () {
   Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => KIBuddyPage(
      firstMessageClicked: false,
      secondMessageClicked: false,
      thirdMessageClicked: false,
      fourthMessageClicked: true,
      greenToggledOn: greenToggledOn,
      yellowToggledOn: yellowToggledOn,
      redToggledOn: redToggledOn,
      purpleToggledOn: purpleToggledOn,
    ),
  ),
);
  },
  child: AnimatedOpacity(
    opacity: _isFourthGreyBubbleVisible ? 1.0 : 0.0,
    duration: const Duration(milliseconds: 300),
    child: _isFourthGreyBubbleVisible
        ? Align(
            alignment: Alignment.centerRight,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FractionallySizedBox(
                      widthFactor: 0.65,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Text(
                          'Es ist ein Problem für sie und sie wünscht euch nicht viel Spaß, sondern ist sauer.',
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
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/kibuddy-face.png',
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
          )
        : Container(),
  ),
),


                ],
              ),
            ),
            )
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
