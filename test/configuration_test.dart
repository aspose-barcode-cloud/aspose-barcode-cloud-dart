import 'dart:io';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'package:test/test.dart';

void main() {
  final configFileName =
      "test${Platform.pathSeparator}configuration.example.json";

  test('Save default Configuration', () async {
    final config = Configuration(
      clientId: "Client Id from https://dashboard.aspose.cloud/applications",
      clientSecret:
          "Client Secret from https://dashboard.aspose.cloud/applications",
    );

    await config.save(configFileName);
    expect(File(configFileName).existsSync(), isTrue);
  });

  test('Load Configuration', () async {
    final config = Configuration.load(configFileName);

    expect(config, isNotNull);
    expect(config!.clientId,
        "Client Id from https://dashboard.aspose.cloud/applications");
    expect(config.clientSecret,
        "Client Secret from https://dashboard.aspose.cloud/applications");
    expect(config.basePath, "https://api.aspose.cloud/v4.0");
    expect(config.tokenUrl, "https://id.aspose.cloud/connect/token");
    expect(config.accessToken, isNull);
  });
}
