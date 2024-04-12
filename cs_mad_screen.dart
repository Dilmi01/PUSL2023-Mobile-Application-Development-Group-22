import 'package:edu_app/screens/calendar.dart';
import 'package:edu_app/screens/chat.dart';
import 'package:edu_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'cs_screen.dart';

class CSMadScreen extends StatelessWidget {
  final String moduleName;

  CSMadScreen({required this.moduleName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(moduleName,
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Center(
        child: Text('Details for $moduleName'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Exit',
          ),
        ],
        selectedItemColor: Colors.black,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => CSPage())); // Replace '/page1' with appropriate route
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => GroupChatPage())); // Navigate to CalendarPage
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen())); // Replace '/page3' with appropriate route
              break;
          }
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Handle Notes button press
            },
            child: Icon(Icons.note),
            backgroundColor: Colors.tealAccent,
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              // Handle Videos button press
            },
            child: Icon(Icons.video_library),
            backgroundColor: Colors.tealAccent,
          ),
        ],
      ),
    );
  }
}
