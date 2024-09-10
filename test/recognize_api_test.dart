import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:test/test.dart';
import 'dart:io';
import 'dart:convert';

import 'test_config.dart';

void main() {
  final fileToRecognize = "qr.png";

  test('.postBarcodeRecognizeFromUrlOrContent', () async {
    final barcode = await MultipartFile.fromPath("file", fileToRecognize);
    final BarcodeResponseList recognized = await TestConfig.recognizeApi
        .barcodeRecognizeFormPost(DecodeBarcodeType.QR, barcode,
            recognitionMode: RecognitionMode.Fast,
            imageKind: RecognitionImageKind.ClearImage);

    expect(recognized, isNotNull);
    expect(recognized.barcodes, isNotEmpty);
    expect(recognized.barcodes[0].type, equals('QR'));
    expect(recognized.barcodes[0].barcodeValue, equals('text'));
  });

  test("Barcode Recognize Barcode Type Get", () async {
    // Test case for barcode_recognize_barcode_type_get
    var response = await TestConfig.recognizeApi.barcodeRecognizeBarcodeTypeGet(
      DecodeBarcodeType.QR,
      'https://products.aspose.app/barcode/scan/img/how-to/scan/step2.png',
      recognitionMode: RecognitionMode.Fast,
      imageKind: RecognitionImageKind.ClearImage,
    );

    expect(response.barcodes.length, equals(1));
    var barcode = response.barcodes[0];
    expect(barcode.type, equals('QR'));
    expect(barcode.barcodeValue, equals('http://en.m.wikipedia.org'));
  });

  test("Barcode Recognize Body Post", () async {
    // Test case for barcode_recognize_body_post
    var imageBytes = await File(fileToRecognize).readAsBytes();
    var encodedString = base64Encode(imageBytes);

    var response = await TestConfig.recognizeApi.barcodeRecognizeBodyPost(
      RecognizeBase64Request(
        [DecodeBarcodeType.QR],
        encodedString,
      ),
    );

    expect(response.barcodes, isNotNull);
    expect(response.barcodes.length, equals(1));
    var barcode = response.barcodes[0];
    expect(barcode.type, equals('QR'));
    expect(barcode.barcodeValue, equals('text'));
    expect(barcode.region![0].x, greaterThan(0));
    expect(barcode.region![0].y, greaterThan(0));
  });
}
