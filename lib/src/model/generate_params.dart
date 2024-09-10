// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Barcode generation parameters
class GenerateParams {
  /// barcodeType
  EncodeBarcodeType? barcodeType = ;
  //enum barcodeTypeEnum {  Codabar,  Code11,  Code39,  Code39FullASCII,  Code93,  Code128,  GS1Code128,  EAN8,  EAN13,  EAN14,  SCC14,  SSCC18,  UPCA,  UPCE,  ISBN,  ISSN,  ISMN,  Standard2of5,  Interleaved2of5,  Matrix2of5,  ItalianPost25,  IATA2of5,  ITF14,  ITF6,  MSI,  VIN,  DeutschePostIdentcode,  DeutschePostLeitcode,  OPC,  PZN,  Code16K,  Pharmacode,  DataMatrix,  QR,  Aztec,  Pdf417,  MacroPdf417,  AustraliaPost,  Postnet,  Planet,  OneCode,  RM4SCC,  DatabarOmniDirectional,  DatabarTruncated,  DatabarLimited,  DatabarExpanded,  SingaporePost,  GS1DataMatrix,  AustralianPosteParcel,  SwissPostParcel,  PatchCode,  DatabarExpandedStacked,  DatabarStacked,  DatabarStackedOmniDirectional,  MicroPdf417,  GS1QR,  MaxiCode,  Code32,  DataLogic2of5,  DotCode,  DutchKIX,  UpcaGs1Code128Coupon,  UpcaGs1DatabarCoupon,  CodablockF,  GS1CodablockF,  Mailmark,  GS1DotCode,  HanXin,  GS1HanXin,  GS1Aztec,  GS1MicroPdf417,  RectMicroQR,  MicroQR,  };
  /// encodeData
  EncodeData? encodeData = ;
  
  /// barcodeImageParams
  BarcodeImageParams? barcodeImageParams = ;
  
  /// Constructor
  GenerateParams();

  @override
  String toString() {
    return 'GenerateParams[barcodeType=$barcodeType, encodeData=$encodeData, barcodeImageParams=$barcodeImageParams, ]';
  }

  /// Creates a GenerateParams instance from a JSON representation.
  GenerateParams.fromJson(Map<String, dynamic> json) {
    barcodeType =
      
      
      EncodeBarcodeType.fromJson(json['barcodeType'])
;
    encodeData =
      
      
      EncodeData.fromJson(json['encodeData'])
;
    barcodeImageParams =
      
      
      BarcodeImageParams.fromJson(json['barcodeImageParams'])
;
  }

  /// Returns a JSON representation of GenerateParams.
  Map<String, dynamic> toJson() {
    return {
      'barcodeType': barcodeType,
      'encodeData': encodeData,
      'barcodeImageParams': barcodeImageParams
     };
  }

  /// Converts a list of JSON objects to a list of GenerateParams instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of GenerateParams instances.
  static List<GenerateParams> listFromJson(List<dynamic> json) {
    return json.map((value) => GenerateParams.fromJson(value)).toList();
  }
}

