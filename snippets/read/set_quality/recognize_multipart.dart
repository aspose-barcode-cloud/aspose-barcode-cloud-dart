import 'dart:io';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

Configuration makeConfiguration() {
  final jwtToken = Platform.environment['TEST_CONFIGURATION_JWT_TOKEN'];
  if (jwtToken != null) {
    return Configuration(accessToken: jwtToken);
  } else {
    return Configuration(
      clientId: "Client Id from https://dashboard.aspose.cloud/applications",
      clientSecret: "Client Secret from https://dashboard.aspose.cloud/applications",
    );
  }
}

Future<void> main() async {
  final config = makeConfiguration();
  final recognizeApi = RecognizeApi(ApiClient(config));

  final file = File("../../../../../aztec.png");

  final BarcodeResponseList result =
      await recognizeApi.barcodeRecognizeMultipartPost(DecodeBarcodeType.Aztec, file);

  print("File '${file.absolute.path}' recognized, result: '${result.barcodes[0].barcodeValue}'");
}
