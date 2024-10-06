import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'log_in.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 100.0), // Adjusted padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
            children: [
              // Row for the top bar (Sign up button on the right)
              Row(
                children: [
                  const Spacer(), // Pushes the Sign up button to the right
                  GestureDetector(
                    onTap: () {
                      // Navigate to SignUp page on button press
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
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
                  ), const SizedBox(
                      width: 10
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to SignUp page on button press
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LogIn()),
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
                          'Log in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50), // Space between the button and the text content
              // Column for the text on the left side
              const Text(
                'Record.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFADB3),
                ),
              ),
              const SizedBox(height: 20), // Vertical spacing between texts
              const Text(
                'Analyse.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFADB3FF), // Corrected hex code
                ),
              ),
              const SizedBox(height: 20), // Vertical spacing between texts
              const Text(
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
      ),
    );
  }
}