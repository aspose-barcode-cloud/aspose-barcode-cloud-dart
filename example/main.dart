import 'dart:io';
import 'dart:typed_data';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'package:http/http.dart' show MultipartFile;

Future<void> main() async {
  const fileName = "qr.png";

  final client = ApiClient(Configuration(
    clientId: "Client Id from https://dashboard.aspose.cloud/applications",
    clientSecret:
        "Client Secret from https://dashboard.aspose.cloud/applications",
    // For testing only
    accessToken: Platform.environment["TEST_CONFIGURATION_ACCESS_TOKEN"],
  ));

  final genApi = GenerateApi(client);
  final scanApi = ScanApi(client);
  // Generate image with barcode
  final Uint8List generated = await genApi.barcodeGenerateBarcodeTypeGet(
      EncodeBarcodeType.QR, "text");

  // Save generated image to file
  File(fileName).writeAsBytesSync(generated);
  print("Generated image saved to '$fileName'");

  // Recognize generated image
  final formFile = MultipartFile.fromBytes("file", generated.toList(),
      filename: "barcode.png");
  final BarcodeResponseList recognized =
      await scanApi.barcodeScanFormPost(formFile);

  if (recognized.barcodes.isNotEmpty) {
    print("Recognized Type: ${recognized.barcodes[0].type!}");
    print("Recognized Value: ${recognized.barcodes[0].barcodeValue!}");
  } else {
    print("No barcode found");
  }
}
