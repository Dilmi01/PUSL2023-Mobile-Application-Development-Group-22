import 'package:edu_app/screens/chat.dart';
import 'package:flutter/material.dart';
import 'package:edu_app/screens/calendar.dart';
import 'package:edu_app/screens/se_screen.dart';
import 'package:edu_app/screens/welcome_screen.dart';

class MadScreen extends StatelessWidget {
  final String moduleName;

  MadScreen({required this.moduleName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          moduleName,
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => SEPage())); // Navigate to SEPage
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => GroupChatPage())); // Navigate to CalendarPage
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen())); // Navigate to WelcomeScreen
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
