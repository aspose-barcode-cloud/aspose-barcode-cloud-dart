import 'dart:convert' show jsonDecode;

import 'package:http/http.dart' show MultipartRequest;

import '../api_exception.dart';
import '../api_helper.dart';
import 'authentication.dart';

class OAuth implements Authentication {
  String? clientId;
  String? clientSecret;
  String tokenUrl;
  String? accessToken;
  DateTime? tokenExpiration;

  OAuth(
      {this.clientId,
      this.clientSecret,
      required this.tokenUrl,
      this.accessToken}) {
    if (!((clientId != null && clientSecret != null) || accessToken != null)) {
      throw ApiException(
          0, "clientId and clientSecret or accessToken required");
    }
  }

  @override
  Future<void> applyToParams(
      List<QueryParam> queryParams, Map<String, String> headerParams) async {
    if (accessToken == null && tokenExpiration == null) {
      if (clientId != null && clientSecret != null) {
        accessToken = await fetchToken();
      } else {
        throw ApiException(0, "clientId or clientSecret not defined");
      }
    }

    if (accessToken == null) {
      throw ApiException(0, "accessToken is null");
    }
    headerParams["Authorization"] = "Bearer " + accessToken!;
  }

  Future<String> fetchToken() async {
    final request = MultipartRequest('POST', Uri.parse(tokenUrl))
      ..fields['grant_type'] = 'client_credentials'
      ..fields['client_id'] = this.clientId!
      ..fields['client_secret'] = this.clientSecret!;

    final response = await request.send();
    final responseText = await response.stream.bytesToString();
    if (response.statusCode != 200) {
      throw ApiException(response.statusCode, responseText);
    }

    final data = jsonDecode(responseText);
    final int expiresIn = data['expires_in'];

    tokenExpiration = DateTime.now().add(Duration(seconds: expiresIn));
    return data['access_token'];
  }
}
