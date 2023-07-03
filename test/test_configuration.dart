import 'dart:io';
import 'dart:math';

import 'package:aspose_barcode_cloud/api.dart' as barcode_api;

class TestConfiguration {
  static final apiClient = barcode_api.ApiClient(
    clientId: "Client Id from https://dashboard.aspose.cloud/applications",
    clientSecret:
        "Client Secret from https://dashboard.aspose.cloud/applications",
    // For testing only
    accessToken: Platform.environment["TEST_CONFIGURATION_ACCESS_TOKEN"],
  );

  static final barcodeApi = barcode_api.BarcodeApi(apiClient);

  static String folder = "BarcodeTests";

  static String generateRandomString(int len) {
    final r = Random();
    return String.fromCharCodes(List.generate(
        len,
        (index) =>
            r.nextInt(26) // 26 letters
            +
            97 // started from 'a'
        ));
  }
}
