import 'package:edu_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.6,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.6,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70),
                ),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/img.png",
                  scale:0.8,
                ),


              ),


            ),


            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Column(
                children: [

                  SizedBox(height: 10),
                  Container(
                    width: 70.0,
                    height: 70.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        shape: CircleBorder(),
                      ),
                      child: Text(
                        'Go',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ),

                  ),
                ],
              ),
            ),

          ],

        ),
      ),
    );
  }
}
