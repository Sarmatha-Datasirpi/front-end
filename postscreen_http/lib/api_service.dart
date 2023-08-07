import 'dart:convert';
import 'package:http/http.dart' as http;
Future<Map<String, dynamic>> postData(String title, String body) async {
  // Replace the URL with your API endpoint for POST requests.
  String url = 'https://jsonplaceholder.typicode.com/posts';

  // Create the request body using the title and body parameters.
  Map<String, dynamic> data = {
    'title': title,
    'body': body,
    'userId': 1, // You may set the userId according to your API requirements.
  };

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );

    if (response.statusCode == 201) {
      // If the POST request is successful, parse the response JSON data.
      Map<String, dynamic> jsonData = json.decode(response.body);
      return jsonData;
    } else {
      // Handle error responses here, if needed.
      throw Exception('Failed to submit data');
    }
  } catch (e) {
    // Handle any exception that occurred during the API call.
    throw Exception('Failed to submit data: $e');
  }
}

