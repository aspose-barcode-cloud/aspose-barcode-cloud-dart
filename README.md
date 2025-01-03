# Aspose.BarCode Cloud SDK for Dart

[![Dart test](https://github.com/aspose-barcode-cloud/aspose-barcode-cloud-dart/actions/workflows/dart.yml/badge.svg?branch=main)](https://github.com/aspose-barcode-cloud/aspose-barcode-cloud-dart/actions/workflows/dart.yml)

- API version: 3.0
- SDK version: 1.24.12

This SDK allows you to work with Aspose.BarCode for Cloud REST APIs in your Dart or Flutter applications quickly and easily

## Demo applications

[Scan QR](https://products.aspose.app/barcode/scanqr) | [Generate Barcode](https://products.aspose.app/barcode/generate) | [Recognize Barcode](https://products.aspose.app/barcode/recognize)
:---: | :---: | :---:
[![ScanQR](https://products.aspose.app/barcode/scanqr/img/aspose_scanqr-app-48.png)](https://products.aspose.app/barcode/scanqr) | [![Generate](https://products.aspose.app/barcode/generate/img/aspose_generate-app-48.png)](https://products.aspose.app/barcode/generate) | [![Recognize](https://products.aspose.app/barcode/recognize/img/aspose_recognize-app-48.png)](https://products.aspose.app/barcode/recognize)
[**Generate Wi-Fi QR**](https://products.aspose.app/barcode/wifi-qr) | [**Embed Barcode**](https://products.aspose.app/barcode/embed) | [**Scan Barcode**](https://products.aspose.app/barcode/scan)
[![Wi-FiQR](https://products.aspose.app/barcode/embed/img/aspose_wifi-qr-app-48.png)](https://products.aspose.app/barcode/wifi-qr) | [![Embed](https://products.aspose.app/barcode/embed/img/aspose_embed-app-48.png)](https://products.aspose.app/barcode/embed) | [![Scan](https://products.aspose.app/barcode/embed/img/aspose_scan-app-48.png)](https://products.aspose.app/barcode/scan)

[Aspose.BarCode for Cloud](https://products.aspose.cloud/barcode/) is a REST API for Linear, 2D and postal barcode generation and recognition in the cloud. API recognizes and generates barcode images in a variety of formats. Barcode REST API allows to specify barcode image attributes like image width, height, border style and output image format in order to customize the generation process. Developers can also specify the barcode type and text attributes such as text location and font styles in order to suit the application requirements.

This repository contains Aspose.BarCode Cloud SDK for Dart source code. This SDK allows you to work with Aspose.BarCode for Cloud REST APIs in your Dart or Flutter applications quickly and easily.

To use these SDKs, you will need Client Id and Client Secret which can be looked up at [Aspose Cloud Dashboard](https://dashboard.aspose.cloud/applications) (free registration in Aspose Cloud is required for this).

## Prerequisites

To use Aspose.BarCode Cloud SDK for Dart you need to register an account with [Aspose Cloud](https://www.aspose.cloud) and lookup/create Client Secret and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/applications). There is a free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/).

## Requirements

Dart 2.12.0 or later

## Installation & Usage
Add this dependency to your *pubspec.yaml*:

```yaml
dependencies:
  aspose_barcode_cloud: 1.24.12
```

## Sample usage

### Generate an image with barcode and then recognize it

The examples below show how you can generate QR barcode and save it into a local file and then recognize using **aspose_barcode_cloud**:

```dart
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

```

## Dependencies

- http: '>=0.13.0 <2.0.0'

## Licensing

All Aspose.BarCode for Cloud SDKs, helper scripts and templates are licensed under [MIT License](LICENSE).

## Resources

- [**Website**](https://www.aspose.cloud)
- [**Product Home**](https://products.aspose.cloud/barcode/)
- [**Documentation**](https://docs.aspose.cloud/barcode/)
- [**Free Support Forum**](https://forum.aspose.cloud/c/barcode)
- [**Paid Support Helpdesk**](https://helpdesk.aspose.cloud/)
- [**Blog**](https://blog.aspose.cloud/categories/aspose.barcode-cloud-product-family/)

## Documentation for API Endpoints

All URIs are relative to *<https://api.aspose.cloud/v3.0>*

Class | Method | HTTP request | Description
----- | ------ | ------------ | -----------
*BarcodeApi* | [**getBarcodeGenerate**](doc/api/BarcodeApi.md#getbarcodegenerate) | **GET** /barcode/generate | Generate barcode.
*BarcodeApi* | [**getBarcodeRecognize**](doc/api/BarcodeApi.md#getbarcoderecognize) | **GET** /barcode/{name}/recognize | Recognize barcode from a file on server.
*BarcodeApi* | [**postBarcodeRecognizeFromUrlOrContent**](doc/api/BarcodeApi.md#postbarcoderecognizefromurlorcontent) | **POST** /barcode/recognize | Recognize barcode from an url or from request body. Request body can contain raw data bytes of the image with content-type \&quot;application/octet-stream\&quot;. An image can also be passed as a form field.
*BarcodeApi* | [**postGenerateMultiple**](doc/api/BarcodeApi.md#postgeneratemultiple) | **POST** /barcode/generateMultiple | Generate multiple barcodes and return in response stream
*BarcodeApi* | [**putBarcodeGenerateFile**](doc/api/BarcodeApi.md#putbarcodegeneratefile) | **PUT** /barcode/{name}/generate | Generate barcode and save on server (from query params or from file with json or xml content)
*BarcodeApi* | [**putBarcodeRecognizeFromBody**](doc/api/BarcodeApi.md#putbarcoderecognizefrombody) | **PUT** /barcode/{name}/recognize | Recognition of a barcode from file on server with parameters in body.
*BarcodeApi* | [**putGenerateMultiple**](doc/api/BarcodeApi.md#putgeneratemultiple) | **PUT** /barcode/{name}/generateMultiple | Generate image with multiple barcodes and put new file on server
*BarcodeApi* | [**scanBarcode**](doc/api/BarcodeApi.md#scanbarcode) | **POST** /barcode/scan | Quickly scan a barcode from an image.
*FileApi* | [**copyFile**](doc/api/FileApi.md#copyfile) | **PUT** /barcode/storage/file/copy/{srcPath} | Copy file
*FileApi* | [**deleteFile**](doc/api/FileApi.md#deletefile) | **DELETE** /barcode/storage/file/{path} | Delete file
*FileApi* | [**downloadFile**](doc/api/FileApi.md#downloadfile) | **GET** /barcode/storage/file/{path} | Download file
*FileApi* | [**moveFile**](doc/api/FileApi.md#movefile) | **PUT** /barcode/storage/file/move/{srcPath} | Move file
*FileApi* | [**uploadFile**](doc/api/FileApi.md#uploadfile) | **PUT** /barcode/storage/file/{path} | Upload file
*FolderApi* | [**copyFolder**](doc/api/FolderApi.md#copyfolder) | **PUT** /barcode/storage/folder/copy/{srcPath} | Copy folder
*FolderApi* | [**createFolder**](doc/api/FolderApi.md#createfolder) | **PUT** /barcode/storage/folder/{path} | Create the folder
*FolderApi* | [**deleteFolder**](doc/api/FolderApi.md#deletefolder) | **DELETE** /barcode/storage/folder/{path} | Delete folder
*FolderApi* | [**getFilesList**](doc/api/FolderApi.md#getfileslist) | **GET** /barcode/storage/folder/{path} | Get all files and folders within a folder
*FolderApi* | [**moveFolder**](doc/api/FolderApi.md#movefolder) | **PUT** /barcode/storage/folder/move/{srcPath} | Move folder
*StorageApi* | [**getDiscUsage**](doc/api/StorageApi.md#getdiscusage) | **GET** /barcode/storage/disc | Get disc usage
*StorageApi* | [**getFileVersions**](doc/api/StorageApi.md#getfileversions) | **GET** /barcode/storage/version/{path} | Get file versions
*StorageApi* | [**objectExists**](doc/api/StorageApi.md#objectexists) | **GET** /barcode/storage/exist/{path} | Check if file or folder exists
*StorageApi* | [**storageExists**](doc/api/StorageApi.md#storageexists) | **GET** /barcode/storage/{storageName}/exist | Check if storage exists

## Documentation For Models

- [ApiError](doc/models/ApiError.md)
- [ApiErrorResponse](doc/models/ApiErrorResponse.md)
- [AustralianPostParams](doc/models/AustralianPostParams.md)
- [AutoSizeMode](doc/models/AutoSizeMode.md)
- [AvailableGraphicsUnit](doc/models/AvailableGraphicsUnit.md)
- [AztecEncodeMode](doc/models/AztecEncodeMode.md)
- [AztecParams](doc/models/AztecParams.md)
- [AztecSymbolMode](doc/models/AztecSymbolMode.md)
- [BarcodeResponse](doc/models/BarcodeResponse.md)
- [BarcodeResponseList](doc/models/BarcodeResponseList.md)
- [BorderDashStyle](doc/models/BorderDashStyle.md)
- [CaptionParams](doc/models/CaptionParams.md)
- [ChecksumValidation](doc/models/ChecksumValidation.md)
- [CodabarChecksumMode](doc/models/CodabarChecksumMode.md)
- [CodabarParams](doc/models/CodabarParams.md)
- [CodabarSymbol](doc/models/CodabarSymbol.md)
- [CodablockParams](doc/models/CodablockParams.md)
- [Code128Emulation](doc/models/Code128Emulation.md)
- [Code128EncodeMode](doc/models/Code128EncodeMode.md)
- [Code128Params](doc/models/Code128Params.md)
- [Code16KParams](doc/models/Code16KParams.md)
- [CodeLocation](doc/models/CodeLocation.md)
- [CouponParams](doc/models/CouponParams.md)
- [CustomerInformationInterpretingType](doc/models/CustomerInformationInterpretingType.md)
- [DataBarParams](doc/models/DataBarParams.md)
- [DataMatrixEccType](doc/models/DataMatrixEccType.md)
- [DataMatrixEncodeMode](doc/models/DataMatrixEncodeMode.md)
- [DataMatrixParams](doc/models/DataMatrixParams.md)
- [DataMatrixVersion](doc/models/DataMatrixVersion.md)
- [DecodeBarcodeType](doc/models/DecodeBarcodeType.md)
- [DiscUsage](doc/models/DiscUsage.md)
- [DotCodeEncodeMode](doc/models/DotCodeEncodeMode.md)
- [DotCodeParams](doc/models/DotCodeParams.md)
- [ECIEncodings](doc/models/ECIEncodings.md)
- [EnableChecksum](doc/models/EnableChecksum.md)
- [EncodeBarcodeType](doc/models/EncodeBarcodeType.md)
- [Error](doc/models/Error.md)
- [ErrorDetails](doc/models/ErrorDetails.md)
- [FileVersions](doc/models/FileVersions.md)
- [FilesList](doc/models/FilesList.md)
- [FilesUploadResult](doc/models/FilesUploadResult.md)
- [FontMode](doc/models/FontMode.md)
- [FontParams](doc/models/FontParams.md)
- [FontStyle](doc/models/FontStyle.md)
- [GeneratorParams](doc/models/GeneratorParams.md)
- [GeneratorParamsList](doc/models/GeneratorParamsList.md)
- [HanXinEncodeMode](doc/models/HanXinEncodeMode.md)
- [HanXinErrorLevel](doc/models/HanXinErrorLevel.md)
- [HanXinParams](doc/models/HanXinParams.md)
- [HanXinVersion](doc/models/HanXinVersion.md)
- [ITF14BorderType](doc/models/ITF14BorderType.md)
- [ITFParams](doc/models/ITFParams.md)
- [MacroCharacter](doc/models/MacroCharacter.md)
- [MaxiCodeEncodeMode](doc/models/MaxiCodeEncodeMode.md)
- [MaxiCodeMode](doc/models/MaxiCodeMode.md)
- [MaxiCodeParams](doc/models/MaxiCodeParams.md)
- [ObjectExist](doc/models/ObjectExist.md)
- [Padding](doc/models/Padding.md)
- [PatchCodeParams](doc/models/PatchCodeParams.md)
- [PatchFormat](doc/models/PatchFormat.md)
- [Pdf417CompactionMode](doc/models/Pdf417CompactionMode.md)
- [Pdf417ErrorLevel](doc/models/Pdf417ErrorLevel.md)
- [Pdf417MacroTerminator](doc/models/Pdf417MacroTerminator.md)
- [Pdf417Params](doc/models/Pdf417Params.md)
- [PostalParams](doc/models/PostalParams.md)
- [PresetType](doc/models/PresetType.md)
- [QREncodeMode](doc/models/QREncodeMode.md)
- [QREncodeType](doc/models/QREncodeType.md)
- [QRErrorLevel](doc/models/QRErrorLevel.md)
- [QRVersion](doc/models/QRVersion.md)
- [QrParams](doc/models/QrParams.md)
- [ReaderParams](doc/models/ReaderParams.md)
- [RegionPoint](doc/models/RegionPoint.md)
- [ResultImageInfo](doc/models/ResultImageInfo.md)
- [StorageExist](doc/models/StorageExist.md)
- [StorageFile](doc/models/StorageFile.md)
- [StructuredAppend](doc/models/StructuredAppend.md)
- [TextAlignment](doc/models/TextAlignment.md)
- [FileVersion](doc/models/FileVersion.md)

