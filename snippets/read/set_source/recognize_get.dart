import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

Configuration makeConfiguration() {
  return Configuration(
    clientId: "Client Id from https://dashboard.aspose.cloud/applications",
    clientSecret:
        "Client Secret from https://dashboard.aspose.cloud/applications",
  );
}

Future<void> main() async {
  final config = makeConfiguration();
  final recognizeApi = RecognizeApi(ApiClient(config));

  final result = await recognizeApi.recognize(
    DecodeBarcodeType.QR,
    "https://products.aspose.app/barcode/scan/img/how-to/scan/step2.png",
  );

  if (result.barcodes.isNotEmpty) {
    print("File recognized, result: '${result.barcodes[0].barcodeValue}'");
  } else {
    print("No barcodes were recognized.");
  }
}
