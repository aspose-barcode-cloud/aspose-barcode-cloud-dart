// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

/// Barcode recognize request
class RecognizeBase64Request {
  /// Array of decode types to find on barcode
  List<DecodeBarcodeType>? barcodeTypes = const [];
  
  /// recognitionMode
  RecognitionMode? recognitionMode = ;
  //enum recognitionModeEnum {  Fast,  Normal,  Excellent,  };
  /// imageKind
  RecognitionImageKind? imageKind = ;
  //enum imageKindEnum {  Photo,  ScannedDocument,  ClearImage,  };
  /// Barcode image bytes encoded as base-64.
  String? fileBase64 = ;
  
  /// Constructor
  RecognizeBase64Request();

  @override
  String toString() {
    return 'RecognizeBase64Request[barcodeTypes=$barcodeTypes, recognitionMode=$recognitionMode, imageKind=$imageKind, fileBase64=$fileBase64, ]';
  }

  /// Creates a RecognizeBase64Request instance from a JSON representation.
  RecognizeBase64Request.fromJson(Map<String, dynamic> json) {
    barcodeTypes =
      
      
      DecodeBarcodeType.fromJson(json['barcodeTypes'])
;
    recognitionMode =
      
      
      RecognitionMode.fromJson(json['recognitionMode'])
;
    imageKind =
      
      
      RecognitionImageKind.fromJson(json['imageKind'])
;
    fileBase64 =
        json['fileBase64']
    ;
  }

  /// Returns a JSON representation of RecognizeBase64Request.
  Map<String, dynamic> toJson() {
    return {
      'barcodeTypes': barcodeTypes,
      'recognitionMode': recognitionMode,
      'imageKind': imageKind,
      'fileBase64': fileBase64
     };
  }

  /// Converts a list of JSON objects to a list of RecognizeBase64Request instances.
  ///
  /// @param json The list of JSON objects to convert.
  /// @return A list of RecognizeBase64Request instances.
  static List<RecognizeBase64Request> listFromJson(List<dynamic> json) {
    return json.map((value) => RecognizeBase64Request.fromJson(value)).toList();
  }
}

