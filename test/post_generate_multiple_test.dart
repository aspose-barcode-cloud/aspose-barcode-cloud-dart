import 'dart:io';
import 'dart:typed_data';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'package:test/test.dart';

import 'test_config.dart';

void main() {
  test('.postGenerateMultiple', () async {
    final qrCode = GeneratorParams()
      ..typeOfBarcode = EncodeBarcodeType.QR
      ..text = "QR text"
      ..textLocation = CodeLocation.None;
    final code128 = GeneratorParams()
      ..typeOfBarcode = EncodeBarcodeType.Code128
      ..text = "Code128 text";

    final generatorParamsList = GeneratorParamsList()
      ..barcodeBuilders!.add(qrCode)
      ..barcodeBuilders!.add(code128);

    final Uint8List generated =
        await TestConfig.barcodeApi.postGenerateMultiple(generatorParamsList);

    expect(generated, isNotNull);
    expect(generated, isNotEmpty);
    expect(generated.length, greaterThan(0));
    File("qr_and_code128.png").writeAsBytesSync(generated);
  });
}
