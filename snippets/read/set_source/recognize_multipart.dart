import 'dart:io';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

Configuration makeConfiguration() {
  final jwtToken = Platform.environment['TEST_CONFIGURATION_JWT_TOKEN'];
  if (jwtToken != null) {
    return Configuration(accessToken: jwtToken);
  } else {
    return Configuration(
      clientId: "Client Id from https://dashboard.aspose.cloud/applications",
      clientSecret:
          "Client Secret from https://dashboard.aspose.cloud/applications",
    );
  }
}

Future<void> main() async {
  final config = makeConfiguration();
  final recognizeApi = RecognizeApi(ApiClient(config));

  final currentDir = Directory.current.path;
  final file = File('$currentDir/../../../../../../qr.png');
  final fileName = file.absolute.path;

  final BarcodeResponseList result = await recognizeApi
      .barcodeRecognizeMultipartPost(DecodeBarcodeType.QR, file);

  if (result.barcodes.isNotEmpty) {
    final barcode = result.barcodes[0];
    print(
        "File '$fileName' recognized, results: value: '${barcode.barcodeValue}', type: ${barcode.type}");
  } else {
    print("File '$fileName' recognized, but no barcodes found.");
  }
}
