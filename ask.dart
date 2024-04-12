import 'package:edu_app/screens/calendar.dart';
import 'package:edu_app/screens/degree_screen.dart';
import 'package:edu_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'mmswijayarathna@students.nsbm.ac.lk', // Replace with your Outlook email
    query: 'subject=Feedback', // Subject of the email
  );

  final String url = params.toString();

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
class AskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'If you have any questions, ask from your lecturers!',
              style: TextStyle(fontSize: 20),textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,

              ),
              onPressed: () {
                // Call the function to launch the email app
                _launchEmail();
              },
              child: Text('Email', style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => DegreeScreen())); // Replace '/page1' with appropriate route
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarPage())); // Navigate to CalendarPage
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen())); // Replace '/page3' with appropriate route
              break;
          }
        },
      ),
    );
  }
}
