import 'package:edu_app/screens/degree_screen.dart';
import 'package:flutter/material.dart';


class MessageScreen extends StatelessWidget {
  final String enteredUsername;

  MessageScreen(this.enteredUsername);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'EduConnect',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi $enteredUsername...! this is our learning platform',
              style: TextStyle(fontSize: 24,color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Image.network(
              'assets/images/b.jpg', // Replace with the actual image URL
              height: 200, // Adjust image height as needed
              fit: BoxFit.cover,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DegreeScreen()),
                );
                // Handle lecturer login
                print('Next Button pressed');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text('Next',
              style: TextStyle(color: Colors.black),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
