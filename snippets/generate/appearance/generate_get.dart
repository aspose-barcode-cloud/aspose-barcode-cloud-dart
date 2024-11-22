
import 'dart:io';
import 'dart:typed_data';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

Configuration makeConfiguration() {
  final envToken = Platform.environment['TEST_CONFIGURATION_JWT_TOKEN'];
  if (envToken != null) {
    return Configuration(accessToken: envToken);
  } else {
    return Configuration(
      clientId: "Client Id from https://dashboard.aspose.cloud/applications",
      clientSecret: "Client Secret from https://dashboard.aspose.cloud/applications",
    );
  }
}

Future<void> main() async {
  final configuration = makeConfiguration();
  final apiClient = ApiClient(configuration);
  final generateApi = GenerateApi(apiClient);

  final fileName = '${Directory.current.path}${Platform.pathSeparator}qr.png';

  final generateParams = GenerateParams(
    EncodeBarcodeType.QR,
    EncodeData("Aspose.BarCode.Cloud", EncodeDataType.StringData),
    BarcodeImageParams()
      ..imageFormat = BarcodeImageFormat.Png
      ..foregroundColor = "Black"
      ..backgroundColor = "White"
      ..resolution = 300
      ..imageHeight = 200
      ..imageWidth = 200
      ..textLocation = CodeLocation.Below,
  );

  final Uint8List response = await generateApi.barcodeGenerateBodyPost(generateParams);

  File(fileName).writeAsBytesSync(response);

  print("File '$fileName' generated.");
}
