import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

class CategoryPrediction {
  final String category;
  final double confidence;

  CategoryPrediction({required this.category, required this.confidence});

  factory CategoryPrediction.fromJson(Map<String, dynamic> json) {
    return CategoryPrediction(
      category: json['category'],
      confidence: json['confidence'].toDouble(),
    );
  }
}

class ReviewResponse {
  final List<CategoryPrediction> categories;
  final int processedSentences;
  final DateTime timestamp;

  ReviewResponse({
    required this.categories,
    required this.processedSentences,
    required this.timestamp,
  });

  factory ReviewResponse.fromJson(Map<String, dynamic> json) {
    return ReviewResponse(
      categories: (json['categories'] as List)
          .map((category) => CategoryPrediction.fromJson(category))
          .toList(),
      processedSentences: json['processed_sentences'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}

Future<ReviewResponse> submitReview(String review) async {
  final url = Uri.parse('http://IP address:8000/reviews/analyze');

  try {
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({'content': review}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return ReviewResponse.fromJson(data);
    } else {
      throw HttpException('Failed to submit review: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error submitting review: $e');
  }
}

// Example usage:
void handleReview() async {
  try {
    final result = await submitReview("The food was excellent and the service was great!");
    for (var category in result.categories) {
      print('Category: ${category.category}, Confidence: ${category.confidence}');
    }
    print('Processed ${result.processedSentences} sentences');
  } catch (e) {
    print('Error: $e');
  }
}