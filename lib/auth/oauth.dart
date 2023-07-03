part of aspose_barcode_cloud.api;

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
        await fetchToken(clientId!, clientSecret!);
      } else {
        throw new ApiException(0, "clientId or clientSecret not defined");
      }
    }

    if (accessToken == null) {
      throw new ApiException(0, "accessToken is null");
    }
    headerParams["Authorization"] = "Bearer " + accessToken!;
  }

  Future fetchToken(String clientId, String clientSecret) async {
    final request = MultipartRequest('POST', Uri.parse(tokenUrl))
      ..fields['grant_type'] = 'client_credentials'
      ..fields['client_id'] = clientId
      ..fields['client_secret'] = clientSecret;

    final response = await request.send();
    final responseText = await response.stream.bytesToString();
    if (response.statusCode != 200) {
      throw ApiException(response.statusCode, responseText);
    }

    final data = jsonDecode(responseText);
    final int expiresIn = data['expires_in'];

    accessToken = data['access_token'];
    tokenExpiration = DateTime.now().add(Duration(seconds: expiresIn));
  }
}
