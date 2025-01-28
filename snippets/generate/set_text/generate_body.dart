import 'dart:io';
import 'dart:typed_data';

import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';

Configuration makeConfiguration() {
  final envToken = Platform.environment['TEST_CONFIGURATION_ACCESS_TOKEN'];
  if (envToken != null) {
    return Configuration(accessToken: envToken);
  } else {
    return Configuration(
      clientId: "Client Id from https://dashboard.aspose.cloud/applications",
      clientSecret:
          "Client Secret from https://dashboard.aspose.cloud/applications",
    );
  }
}

Future<void> main() async {
  final fileName =
      "${Directory.current.path}${Platform.pathSeparator}Pdf417.png";

  final configuration = makeConfiguration();
  final apiClient = ApiClient(configuration);
  final generateApi = GenerateApi(apiClient);

  final postParams = GenerateParams(
    EncodeBarcodeType.Pdf417,
    EncodeData("QXNwb3NlLkJhckNvZGUuQ2xvdWQ=", EncodeDataType.Base64Bytes),
  );

  final Uint8List response = await generateApi.generateBody(postParams);

  final file = File(fileName);
  file.writeAsBytes(response);

  print("File '${file.path}' generated.");
}
