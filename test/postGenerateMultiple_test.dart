import 'dart:io';
import 'dart:typed_data';

import 'package:aspose_barcode_cloud/api.dart';
import 'package:test/test.dart';

import 'test_configuration.dart';

void main() {
  test('.postGenerateMultiple', () async {
    final barcode = GeneratorParams()
      ..typeOfBarcode = EncodeBarcodeType.qR_
      ..text = "text"
      ..textLocation = CodeLocation.none_;

    final generatorParamsList = GeneratorParamsList()
      ..barcodeBuilders!.add(barcode);

    final Uint8List generated =
        await TestConfiguration.BarcodeApi.postGenerateMultiple(
            generatorParamsList);

    expect(generated, isNotNull);
    expect(generated, isNotEmpty);
    expect(generated!.length, greaterThan(0));
    new File("qr.png").writeAsBytesSync(generated);
  });
}
