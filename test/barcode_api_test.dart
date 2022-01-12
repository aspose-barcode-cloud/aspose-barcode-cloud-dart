@Timeout(Duration(minutes: 2))

import 'dart:typed_data';

import 'package:aspose_barcode_cloud/api.dart' as barcode_api;
import 'package:http/http.dart';
import 'package:test/test.dart';

import 'test_configuration.dart';

void main() {
  test(
      '.getBarcodeGenerate generates and then .postBarcodeRecognizeFromUrlOrContent recognizes it',
      () async {
    // Setup
    var api = barcode_api.BarcodeApi(TestConfiguration.ApiClient);

    // Generate image with barcode
    Uint8List? generated = await api.getBarcodeGenerate('QR', 'text');

    expect(generated, isNotNull);
    expect(generated, isNotEmpty);

    // Recognize generated image
    var barcode = MultipartFile.fromBytes('image', generated!.toList(),
        filename: 'barcode.png');
    barcode_api.BarcodeResponseList? recognized =
        await api.postBarcodeRecognizeFromUrlOrContent(image: barcode);

    expect(recognized, isNotNull);
    expect(recognized!.barcodes, isNotEmpty);
    expect(recognized.barcodes![0].type, equals('QR'));
    expect(recognized.barcodes![0].barcodeValue, equals('text'));
  });
}
