import 'package:edu_app/screens/degree_screen.dart';
import 'package:edu_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class GroupChatPage extends StatefulWidget {
  @override
  _GroupChatPageState createState() => _GroupChatPageState();
}

class _GroupChatPageState extends State<GroupChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(message);
      });
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Group Chat',
          style: TextStyle(color: Colors.white),
           textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (ctx, index) => ListTile(
                title: Text(_messages[index]),
                // You can add more details like sender's name, timestamp, etc. here
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(labelText: 'Type your message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _sendMessage(_messageController.text),
                ),
              ],
            ),
          ),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => DegreeScreen())); // Replace '/page1' with appropriate route
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GroupChatPage(),
  ));
}
