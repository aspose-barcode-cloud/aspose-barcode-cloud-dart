// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Barcode generation parameters
class GenerateParams {
  /// barcodeType
  //enum barcodeTypeEnum {  QR,  AustraliaPost,  AustralianPosteParcel,  Aztec,  Codabar,  CodablockF,  Code11,  Code128,  Code16K,  Code32,  Code39,  Code39FullASCII,  Code93,  DataLogic2of5,  DataMatrix,  DatabarExpanded,  DatabarExpandedStacked,  DatabarLimited,  DatabarOmniDirectional,  DatabarStacked,  DatabarStackedOmniDirectional,  DatabarTruncated,  DeutschePostIdentcode,  DeutschePostLeitcode,  DotCode,  DutchKIX,  EAN13,  EAN14,  EAN8,  GS1Aztec,  GS1CodablockF,  GS1Code128,  GS1DataMatrix,  GS1DotCode,  GS1HanXin,  GS1MicroPdf417,  GS1QR,  HanXin,  IATA2of5,  ISBN,  ISMN,  ISSN,  ITF14,  ITF6,  Interleaved2of5,  ItalianPost25,  MSI,  MacroPdf417,  Mailmark,  Matrix2of5,  MaxiCode,  MicroPdf417,  MicroQR,  OPC,  OneCode,  PZN,  PatchCode,  Pdf417,  Pharmacode,  Planet,  Postnet,  RM4SCC,  RectMicroQR,  SCC14,  SSCC18,  SingaporePost,  Standard2of5,  SwissPostParcel,  UPCA,  UPCE,  UpcaGs1Code128Coupon,  UpcaGs1DatabarCoupon,  VIN,  };
  late EncodeBarcodeType barcodeType;

  /// encodeData

  late EncodeData encodeData;

  /// barcodeImageParams

  BarcodeImageParams? barcodeImageParams;

  /// Constructor
  GenerateParams(this.barcodeType, this.encodeData, [this.barcodeImageParams]);

  @override
  String toString() {
    return 'GenerateParams[barcodeType=$barcodeType, encodeData=$encodeData, barcodeImageParams=$barcodeImageParams, ]';
  }

  /// Creates a GenerateParams instance from a JSON representation.
  GenerateParams.fromJson(Map<String, dynamic> json) {
    barcodeType = EncodeBarcodeType.fromJson(json['barcodeType']);
    encodeData = EncodeData.fromJson(json['encodeData']);
    barcodeImageParams = json['barcodeImageParams'] == null
        ? null
        : BarcodeImageParams.fromJson(json['barcodeImageParams']);
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
