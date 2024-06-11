// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = true; // State variable to track the switch state

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
                  Navigator.pop(context);
                },
              ),
              automaticallyImplyLeading: false,
              title: const Text(
                'Einstellungen',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF232323),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Transform.translate(
                          offset: const Offset(0, -20),
                          child: Container(
                            height: 85,
                            color: Colors.white,
                            margin: const EdgeInsets.only(bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25, top: 10),
                                      child: Image.asset(
                                        'assets/images/kibuddy-circled.png',
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20, top: 20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'KI-Buddy',
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Transform.translate(
                                  offset: const Offset(0, -5),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 22, top: 5),
                                    child: Text(
                                      'Bearbeiten',
                                      style: TextStyle(fontSize: 10, color: Color(0xFF3297B7), fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          height: 55,
                          color: Colors.white,
                          margin: index == 1
                              ? const EdgeInsets.fromLTRB(0, 0, 0, 20)
                              : const EdgeInsets.symmetric(vertical: 2),
                          child: index == 1
                              ? const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 25),
                                      child: Icon(
                                        Icons.language,
                                        size: 28,
                                        color: Color(0xFF3297B7),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      'Sprache',
                                      style: TextStyle(fontSize: 16, color: Color(0xFF232323), fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Deutsch',
                                      style: TextStyle(fontSize: 16, color: Color(0xFFC8C7CC), fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(width: 10),
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                        color: Color(0xFFC8C7CC),
                                      ),
                                    ),
                                  ],
                                )
                              : index == 2
                                  ? Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 30),
                                          child: Container(
                                            width: 16,
                                            height: 16,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xFF00E809),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 22),
                                        const Text(
                                          'Positiv',
                                          style: TextStyle(fontSize: 16, color: Color(0xFF232323), fontWeight: FontWeight.w500),
                                        ),
                                        const Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Transform.scale(
                                            scale: 0.8,
                                            child: CupertinoSwitch(
                                              value: isSwitched,
                                              onChanged: (value) {
                                                setState(() {
                                                  isSwitched = value; // Update the state variable
                                                });
                                              },
                                              activeColor: const Color(0xFF6edc5f),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : index == 3
                                      ? Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 30),
                                              child: Container(
                                                width: 16,
                                                height: 16,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xFFFBEE7A), // Yellow color
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 22),
                                            const Text(
                                              'Ungewiss', // Changed text to "Ungewiss"
                                              style: TextStyle(fontSize: 16, color: Color(0xFF232323), fontWeight: FontWeight.w500),
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 10),
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: CupertinoSwitch(
                                                  value: isSwitched,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isSwitched = value; // Update the state variable
                                                    });
                                                  },
                                                  activeColor: const Color(0xFF6edc5f),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      : index == 4
                                          ? Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 30),
                                                  child: Container(
                                                    width: 16,
                                                    height: 16,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xFFFB2F2F), // Red color
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 22),
                                                const Text(
                                                  'Negativ', // Changed text to "Negativ"
                                                  style: TextStyle(fontSize: 16, color: Color(0xFF232323), fontWeight: FontWeight.w500),
                                                ),
                                                const Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10),
                                                  child: Transform.scale(
                                                    scale: 0.8,
                                                    child: CupertinoSwitch(
                                                      value: isSwitched,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          isSwitched = value; // Update the state variable
                                                        });
                                                      },
                                                      activeColor: const Color(0xFF6edc5f),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          : index == 5
                                              ? Row(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 30),
                                                      child: Container(
                                                        width
                                                        : 16,
                                                        height: 16,
                                                        decoration: const BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          color: Color(0xFFAD4AFC), // Purple color
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 22),
                                                    const Text(
                                                      'Sarkasmus', // Text changed to "Sarkasmus"
                                                      style: TextStyle(fontSize: 16, color: Color(0xFF232323), fontWeight: FontWeight.w500),
                                                    ),
                                                    const Spacer(),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right: 10),
                                                      child: Transform.scale(
                                                        scale: 0.8,
                                                        child: CupertinoSwitch(
                                                          value: isSwitched,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              isSwitched = value; // Update the state variable
                                                            });
                                                          },
                                                          activeColor: const Color(0xFF6edc5f),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              : Center(
                                                  child: Text(
                                                    'Box ${index + 1}',
                                                    style: const TextStyle(fontSize: 18),
                                                  ),
                                                ),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

