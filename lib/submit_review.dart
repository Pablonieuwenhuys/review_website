import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> submitReview(String review) async {
  final url = Uri.parse('http://192.168.178.57:8000/submit_review/');

  try {
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({'content': review}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['category'] ?? 'No analysis available';  // Ensure something is returned
    } else {
      return 'Error: ${response.statusCode}';
    }
  } catch (e) {
    return 'Error: $e';
  }
}