
import 'package:edu_app/screens/calendar.dart';
import 'package:edu_app/screens/cn_screen.dart';
import 'package:edu_app/screens/cs_screen.dart';
import 'package:edu_app/screens/cy_screen.dart';
import 'package:edu_app/screens/se_screen.dart';
import 'package:edu_app/screens/welcome_screen.dart';

import 'package:flutter/material.dart';

class DegreeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Degree Program',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select your degree program:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16, width: 8),
            Expanded(child: DegreeButton('BSc (Hons) Software Engineering')),
            Expanded(child: DegreeButton('BSc (Hons) Computer Science')),
            Expanded(child: DegreeButton('BSc (Hons) Computer Network')),
            Expanded(
              child: DegreeButton('Cyber Security'),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => CNPage()));// Replace '/page1' with appropriate route
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarPage())); // Navigate to CalendarPage
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen())); // Replace '/page3' with appropriate route
              break;
          }

          // Handle navigation based on index
        },
      ),
    );
  }
}

class DegreeButton extends StatelessWidget {
  final String degree;

  const DegreeButton(this.degree);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(6), // Add vertical spacing
      child: ElevatedButton(
        onPressed: () {
          switch (degree) {
            case 'BSc (Hons) Software Engineering':
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SEPage()));
              break;
            case 'BSc (Hons) Computer Science':
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CSPage()));
              break;

            case 'BSc (Hons) Computer Network':
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CNPage()));
              break;
            case 'Cyber Security':
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CYPage()));
              break;
          }

          // Handle degree selection
          print('$degree selected');
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.black12, // Button background color
          onPrimary: Colors.black, // Text color
          minimumSize: Size(double.maxFinite, 150), // Set the button width
        ),
        child: Text(degree),
      ),
    );
  }
}