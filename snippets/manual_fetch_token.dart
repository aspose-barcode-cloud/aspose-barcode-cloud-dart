import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final clientId = "Client Id from https://dashboard.aspose.cloud/applications";
  final clientSecret =
      "Client Secret from https://dashboard.aspose.cloud/applications";

  final baseUrl = "https://id.aspose.cloud/";
  final endpoint = "connect/token";

  // Check the client_id is changed to not break github CI pipeline
  if (clientId.startsWith("Client Id")) {
    print("client_id not configured. Skip this snippet test");
    return;
  }

  final payload = {
    "grant_type": "client_credentials",
    "client_id": clientId,
    "client_secret": clientSecret,
  };

  final response = await http.post(
    Uri.parse(baseUrl + endpoint),
    body: payload,
  );

  if (response.statusCode == 200) {
    final token = jsonDecode(response.body)['access_token'];
    print("Token recieved successfully");
    //Uncomment next line to view token.
    //print(token);
  } else {
    throw Exception(
      "HTTP error occurred: ${response.statusCode} - ${response.reasonPhrase}",
    );
  }
}
