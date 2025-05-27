// ignore_for_file: constant_identifier_names

import 'dart:convert' show JsonEncoder, jsonDecode;
import 'dart:io';

/// Default token url
const DEFAULT_TOKEN_URL = "https://id.aspose.cloud/connect/token";

/// Default API base path
const DEFAULT_BASE_PATH = "https://api.aspose.cloud/v4.0";

/// Configuration for ApiClient
class Configuration {
  /// Client Id from https://dashboard.aspose.cloud/applications
  final String? clientId;

  /// Client Secret from https://dashboard.aspose.cloud/applications
  final String? clientSecret;

  /// Access token
  final String? accessToken;

  /// Token url
  late final String tokenUrl;

  /// Base API path
  late final String basePath;

  /// Constructor
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

  static Configuration _fromJson(Map<String, dynamic> json) {
    return Configuration(
      clientId: json['clientId'],
      clientSecret: json['clientSecret'],
      basePath: json['basePath'],
      tokenUrl: json['tokenUrl'],
      accessToken: json['accessToken'],
    );
  }

  Map<String, dynamic> _toJson() => {
        if (clientId != null) 'clientId': clientId,
        if (clientSecret != null) 'clientSecret': clientSecret,
        'basePath': basePath,
        'tokenUrl': tokenUrl,
        if (accessToken != null) 'accessToken': accessToken,
      };

  /// Save configuration to file
  Future<void> save(String fileName) async {
    final file = File(fileName);
    final encoder = JsonEncoder.withIndent('  ');
    final jsonString = encoder.convert(_toJson());
    await file.writeAsString(jsonString);
  }

  /// Load configuration from file
  static Configuration? load(String fileName) {
    final file = File(fileName);
    if (!file.existsSync()) {
      return null;
    }
    final Map<String, dynamic> jsonMap = jsonDecode(file.readAsStringSync());
    return Configuration._fromJson(jsonMap);
  }

  /// Load configuration from environment variables
  static Configuration fromEnv({String prefix = ""}) {
    final accessToken = Platform.environment["${prefix}ACCESS_TOKEN"];
    return Configuration(
      accessToken: accessToken,
    );
  }
}
