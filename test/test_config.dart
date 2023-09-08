import 'dart:io';
import 'dart:math';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

class TestConfig {
  static final configuration = Configuration.load(
          "test" + Platform.pathSeparator + "configuration.json") ??
      Configuration.fromEnv(prefix: "TEST_CONFIGURATION_");
  static final apiClient = ApiClient(configuration);

  static final barcodeApi = BarcodeApi(apiClient);

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
