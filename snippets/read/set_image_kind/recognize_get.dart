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

  final imageUrl =
      "https://products.aspose.app/barcode/scan/img/how-to/scan/step2.png";

  final BarcodeResponseList result =
      await recognizeApi.recognize(DecodeBarcodeType.QR, imageUrl);

  print(
      "File '$imageUrl' recognized, result: '${result.barcodes[0].barcodeValue}'");
}
