import 'dart:io';
import 'dart:math';

import 'package:aspose_barcode_cloud/api.dart' as barcode_api;
import 'package:aspose_barcode_cloud/src/configuration.dart';

class TestConfig {
  static final configuration = Configuration.load(
          "test" + Platform.pathSeparator + "configuration.json") ??
      Configuration.fromEnv(prefix: "TEST_CONFIGURATION_");
  static final apiClient = barcode_api.ApiClient(configuration);

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
