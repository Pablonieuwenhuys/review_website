import 'package:flutter/material.dart';
import '../landing_page.dart';
import 'circular_chart.dart'; // Assuming CircularChart is your pie chart widget
import 'input_writed_review.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
          children: [
            // Row for the "Your Business" text and "Log out" button
            Row(
              children: [
                const Text(
                  'Your Business',
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Spacer(), // Pushes the log out button to the right
                GestureDetector(
                  onTap: () {
                    // Navigate to LandingPage on log out
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage()),
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
              ],
            ),
              const SizedBox(height: 40), // Space between the row and the pie chart
            Row(
              children: [
                const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            // Title for the Pie Chart
            const Text(
              'Overall Comments analysis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50), // Adds some space between the text and the pie chart

            // Add the pie chart below
            const SizedBox(
              width: 300, // Width of the pie chart container
              height: 300, // Height of the pie chart container
              child: CircularChart(), //Input the CircularChart class to get the pie chart
            ),
            const SizedBox(height: 40), // Space between the row and the pie chart
            // Title for the Pie Chart
            const Text(
              'Overall Comments analysis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
                ],
                ),
            const SizedBox(height: 20),

            SizedBox(
              width: 300,
              height: 500,
              child: ReviewAnalysisPage(),
            ),
            ],
        ),
      ],
    ),
    ),
    );
  }
}



