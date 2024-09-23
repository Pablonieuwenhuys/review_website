import 'package:flutter/material.dart';
import 'sign_up.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 180.0, top: 150.0), // Adjusted padding for texts
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,  // Align text to the left
                children: <Widget>[
                  Text(
                    'Record.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 72,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFADB3),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Analyse.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 72,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFADB3FF),  // Corrected hex code
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Improve.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 72,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF6BDFDA),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 40,  // Positioning the button similar to HomePage
              right: 60, // Right alignment with some margin
              child: GestureDetector(
                onTap: () {
                  // Navigate to SignUp page on button press
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Container(
                  width: 200, // Width of the box
                  height: 54, // Height of the box
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent, // Box color
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  child: const Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




