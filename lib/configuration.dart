import 'dart:convert';
import 'dart:io';

const DEFAULT_TOKEN_URL = "https://api.aspose.cloud/connect/token";
const DEFAULT_BASE_PATH = "https://api.aspose.cloud/v3.0";

// Configuration for ApiClient
class Configuration {
  final String? clientId;
  final String? clientSecret;
  final String? accessToken;
  late final String tokenUrl;
  late final String basePath;

  Configuration({
    this.clientId,
    this.clientSecret,
    String? basePath,
    String? tokenUrl,
    this.accessToken,
  }) {
    this.basePath = basePath ?? DEFAULT_BASE_PATH;
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
        'basePath': basePath,
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
