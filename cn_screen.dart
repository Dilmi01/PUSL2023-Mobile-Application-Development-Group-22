import 'package:edu_app/screens/ask.dart';
import 'package:edu_app/screens/calendar.dart';
import 'package:edu_app/screens/cn_module.dart';
import 'package:edu_app/screens/degree_screen.dart';
import 'package:edu_app/screens/feedback.dart';
import 'package:edu_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class CNPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BSc (Hons) Computer Network',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'assets/images/m.png', // Replace with the actual image URL
            height: 200,
            width: 430, // Adjust image height as needed
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 16),
          SizedBox(height: 16),
          DegreeButton('Modules',(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CNModuleScreen()));
          }

          ),
          DegreeButton('Event Calendar', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarPage()));
          }), // Navigate to CalendarPage on button press
          DegreeButton('Feedback',(){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>FeedbackPage()));
          }),
          DegreeButton('Ask From Your Lecturer',(){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>AskScreen()));
          }),
          SizedBox(height: 16),
        ],
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

class DegreeButton extends StatelessWidget {
  final String degree;
  final VoidCallback onPressed;

  const DegreeButton(this.degree, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.white,
          minimumSize: Size(double.maxFinite, 40),
        ),
        child: Text(degree),
      ),
    );
  }
}
