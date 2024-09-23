import 'package:flutter/material.dart';
import 'landing_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 100,
            left: 50,
            child: Text(
          'Your Business',
          style: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),

      Positioned(
        top: 40,
        right: 60,
        child: GestureDetector(
          onTap: () {
            // Navigate to LandingPage on log out
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LandingPage()),
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
        'Log out',
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
      )
      );
  }
}

