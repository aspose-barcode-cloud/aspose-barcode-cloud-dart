import 'dart:convert';
import 'dart:io';

const DEFAULT_TOKEN_URL = "https://api.aspose.cloud/connect/token";

// Configuration for ApiClient
class Configuration {
  final String? clientId;
  final String? clientSecret;
  final String? basePath;
  final String? accessToken;
  late final String tokenUrl;

  Configuration({
    this.clientId,
    this.clientSecret,
    this.basePath,
    String? tokenUrl,
    this.accessToken,
  }) {
    this.tokenUrl = tokenUrl ?? DEFAULT_TOKEN_URL;
  }

  static Configuration fromJson(Map<String, dynamic> json) {
    return Configuration(
      clientId: json['clientId'],
      clientSecret: json['clientSecret'],
      basePath: json['basePath'],
      tokenUrl: json['tokenUrl'],
      accessToken: json['accessToken'],
    );
  }

  Map<String, dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId,
        if (clientSecret != null) 'clientSecret': clientSecret,
        if (basePath != null) 'basePath': basePath,
        'tokenUrl': tokenUrl,
        if (accessToken != null) 'accessToken': accessToken,
      };

  Future<void> save(String fileName) async {
    final file = File(fileName);
    final encoder = JsonEncoder.withIndent('  ');
    final jsonString = encoder.convert(toJson());
    await file.writeAsString(jsonString);
  }

  static Configuration? load(String fileName) {
    final file = File(fileName);
    if (!file.existsSync()) {
      return null;
    }
    final Map<String, dynamic> jsonMap = jsonDecode(file.readAsStringSync());
    return Configuration.fromJson(jsonMap);
  }

  static fromEnv({String prefix = ""}) {
    final accessToken = Platform.environment[prefix + "ACCESS_TOKEN"];
    return Configuration(
      accessToken: accessToken,
    );
  }
}
