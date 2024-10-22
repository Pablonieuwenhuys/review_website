import 'package:flutter/material.dart';
import 'package:restaurant_review/submit_review.dart';

class ReviewAnalysisPage extends StatefulWidget {
  const ReviewAnalysisPage({super.key});

  @override
  ReviewAnalysisPageState createState() => ReviewAnalysisPageState();
}

class ReviewAnalysisPageState extends State<ReviewAnalysisPage> {
  final TextEditingController _controller = TextEditingController();
  String _analysisResult = '';

  void _submitReview() async {
    String review = _controller.text; //get the review from the text field

    setState(() {
      _analysisResult = 'Submitting review...';
    });
    String analysisResult = await submitReview(review);

    setState(() {
      _analysisResult = analysisResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Analysis'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Enter your review'),
              maxLines: 5,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _submitReview,
              child: const Text('Submit Review'),
            ),
            const SizedBox(height: 16.0),
            // Display the analysis result
            Text(
              _analysisResult,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
