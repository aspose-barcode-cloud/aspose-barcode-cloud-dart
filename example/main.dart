import 'package:aspose_barcode_cloud/api.dart' as barcode;

import 'dart:typed_data';
import 'dart:io';

import 'package:http/http.dart';

Future<void> main() async {
  const fileName = "qr.png";
  // Setup
  var apiClient = barcode.ApiClient(
    clientId: "Client Id from https://dashboard.aspose.cloud/applications",
    clientSecret:
        "Client Secret from https://dashboard.aspose.cloud/applications",
  );
  var api = barcode.BarcodeApi(apiClient);

  // Generate image with barcode
  Uint8List? generated =
      await api.getBarcodeGenerate("QR", "text", textLocation: "None");
  // Save generated image to file
  await new File(fileName).writeAsBytes(generated!);
  print("Generated image saved to " + fileName);

  // Recognize generated image
  var formFile = MultipartFile.fromBytes("image", generated.toList(),
      filename: "barcode.png");
  barcode.BarcodeResponseList? recognized =
      await api.postBarcodeRecognizeFromUrlOrContent(image: formFile);

  print("Recognized Type: " + recognized!.barcodes![0].type!);
  print("Recognized Value: " + recognized.barcodes![0].barcodeValue!);
}
