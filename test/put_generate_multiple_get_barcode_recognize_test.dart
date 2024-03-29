import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
import 'package:test/test.dart';

import 'test_config.dart';

void main() {
  final remoteFileName = "${TestConfig.generateRandomString(16)}.png";

  test('.putGenerateMultiple', () async {
    final barcode = GeneratorParams()
      ..typeOfBarcode = EncodeBarcodeType.qR_
      ..text = "test";

    final generatorParamsList = GeneratorParamsList()
      ..barcodeBuilders!.add(barcode);

    final ResultImageInfo generated = await TestConfig.barcodeApi
        .putGenerateMultiple(remoteFileName, generatorParamsList,
            folder: TestConfig.folder);

    expect(generated, isNotNull);
    expect(generated.fileSize, greaterThan(0));
    expect(generated.imageHeight, greaterThan(0));
    expect(generated.imageWidth, greaterThan(0));
  });

  test('.getBarcodeRecognize', () async {
    final BarcodeResponseList recognized =
        await TestConfig.barcodeApi.getBarcodeRecognize(
      remoteFileName,
      folder: TestConfig.folder,
      preset: PresetType.highPerformance_.toString(),
      types: [DecodeBarcodeType.qR_, DecodeBarcodeType.dataMatrix_],
    );

    expect(recognized.barcodes, isNotNull);
    expect(recognized.barcodes, isNotEmpty);

    final first = recognized.barcodes![0];
    expect(first.type, equals(DecodeBarcodeType.qR_.toString()));
    expect(first.barcodeValue, "test");
  });
}
