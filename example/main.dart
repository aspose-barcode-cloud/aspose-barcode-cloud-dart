import 'dart:io';
import 'dart:typed_data';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'package:http/http.dart' show MultipartFile;

Future<void> main() async {
  const fileName = "qr.png";

  final api = BarcodeApi(ApiClient(Configuration(
    clientId: "Client Id from https://dashboard.aspose.cloud/applications",
    clientSecret:
        "Client Secret from https://dashboard.aspose.cloud/applications",
    // For testing only
    accessToken: Platform.environment["TEST_CONFIGURATION_ACCESS_TOKEN"],
  )));

  // Generate image with barcode
  final Uint8List generated = await api.getBarcodeGenerate(
    EncodeBarcodeType.QR.toString(),
    "text",
    textLocation: CodeLocation.None.toString(),
  );

  // Save generated image to file
  File(fileName).writeAsBytesSync(generated);
  print("Generated image saved to '$fileName'");

  // Recognize generated image
  final formFile = MultipartFile.fromBytes("image", generated.toList(),
      filename: "barcode.png");
  final BarcodeResponseList recognized = await api.scanBarcode(
    formFile,
    decodeTypes: [DecodeBarcodeType.QR],
  );

  if (recognized.barcodes != null && recognized.barcodes!.isNotEmpty) {
    print("Recognized Type: ${recognized.barcodes![0].type!}");
    print("Recognized Value: ${recognized.barcodes![0].barcodeValue!}");
  } else {
    print("No barcode found");
  }
}
