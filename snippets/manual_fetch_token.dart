import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final clientId = "<Your-Client-Id>";
  final clientSecret = "<Your-Client-Secret>";

  final baseUrl = "https://id.aspose.cloud/";
  final endpoint = "connect/token";

  final payload = {
    "grant_type": "client_credentials",
    "client_id": clientId,
    "client_secret": clientSecret,
  };

  try {
    final response = await http.post(
      Uri.parse(baseUrl + endpoint),
      body: payload,
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print(data);
    } else {
      print("HTTP error occurred: ${response.statusCode} - ${response.reasonPhrase}");
    }
  } catch (err) {
    print("An unexpected error occurred: $err");
  }
}
