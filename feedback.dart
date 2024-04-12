import 'package:edu_app/screens/calendar.dart';
import 'package:edu_app/screens/degree_screen.dart';
import 'package:edu_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _feedbackController = TextEditingController();

  void _submitFeedback(BuildContext context) {
    // Implement the logic to submit feedback
    String name = _nameController.text;
    String email = _emailController.text;
    String feedback = _feedbackController.text;

    // Example: Print feedback data
    print('Name: $name, Email: $email, Feedback: $feedback');

    // Clear input fields after submission
    _nameController.clear();
    _emailController.clear();
    _feedbackController.clear();

    // Show a SnackBar to provide feedback submission confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Feedback submitted!'),
        duration: Duration(seconds: 2), // Adjust duration as needed
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Feedback',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _feedbackController,
              decoration: InputDecoration(labelText: 'Feedback'),
              maxLines: 5,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black),
              onPressed: () {
                _submitFeedback(context); // Pass BuildContext to the function
              },
              child: Text('Submit Feedback',
                style: TextStyle(color: Colors.white),
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
