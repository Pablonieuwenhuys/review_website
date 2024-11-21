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
  bool _isLoading = false;

  void _submitReview() async {
    String review = _controller.text;

    setState(() {
      _isLoading = true;
      _analysisResult = 'Submitting review...';
    });

    try {
      final response = await submitReview(review);

      // Format the results as a string
      final categoriesText = response.categories.map((category) =>
      '${category.category}: ${(category.confidence * 100).toStringAsFixed(1)}%'
      ).join('\n');

      setState(() {
        _analysisResult = 'Analysis Results:\n\n$categoriesText\n\n'
            'Processed ${response.processedSentences} sentences';
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _analysisResult = 'Error: $e';
        _isLoading = false;
      });
    }
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
              onPressed: _isLoading ? null : _submitReview,
              child: _isLoading
                  ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
                  : const Text('Submit Review'),
            ),
            const SizedBox(height: 16.0),
            Text(
              _analysisResult,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
