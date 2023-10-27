import 'dart:convert' show json;

import 'package:http/http.dart' as Http show Client, MultipartRequest, Response;

import '../aspose_barcode_cloud.dart';
import 'api_helper.dart';
import 'auth/authentication.dart';
import 'auth/oauth.dart';

const String SDK_VERSION = "0.23.10";

class ApiClient {
  late final String basePath;
  final httpClient = Http.Client();

  static const String API_SDK_HEADER = "x-aspose-client";
  static const String SDK_NAME = "dart sdk";
  static const String API_CLIENT_VERSION_HEADER = "x-aspose-client-version";

  Map<String, String> _defaultHeaderMap = {
    API_SDK_HEADER: SDK_NAME,
    API_CLIENT_VERSION_HEADER: SDK_VERSION,
  };

  late Authentication _authentication;

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient(Configuration config) {
    this.basePath = config.basePath;
    _authentication = OAuth(
        clientId: config.clientId,
        clientSecret: config.clientSecret,
        accessToken: config.accessToken,
        tokenUrl: config.tokenUrl);
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ApiError':
          return ApiError.fromJson(value);
        case 'ApiErrorResponse':
          return ApiErrorResponse.fromJson(value);
        case 'AustralianPostParams':
          return AustralianPostParams.fromJson(value);
        case 'AutoSizeMode':
          return AutoSizeMode.fromJson(value);
        case 'AvailableGraphicsUnit':
          return AvailableGraphicsUnit.fromJson(value);
        case 'AztecEncodeMode':
          return AztecEncodeMode.fromJson(value);
        case 'AztecParams':
          return AztecParams.fromJson(value);
        case 'AztecSymbolMode':
          return AztecSymbolMode.fromJson(value);
        case 'BarcodeResponse':
          return BarcodeResponse.fromJson(value);
        case 'BarcodeResponseList':
          return BarcodeResponseList.fromJson(value);
        case 'BorderDashStyle':
          return BorderDashStyle.fromJson(value);
        case 'CaptionParams':
          return CaptionParams.fromJson(value);
        case 'ChecksumValidation':
          return ChecksumValidation.fromJson(value);
        case 'CodabarChecksumMode':
          return CodabarChecksumMode.fromJson(value);
        case 'CodabarParams':
          return CodabarParams.fromJson(value);
        case 'CodabarSymbol':
          return CodabarSymbol.fromJson(value);
        case 'CodablockParams':
          return CodablockParams.fromJson(value);
        case 'Code128Emulation':
          return Code128Emulation.fromJson(value);
        case 'Code128EncodeMode':
          return Code128EncodeMode.fromJson(value);
        case 'Code128Params':
          return Code128Params.fromJson(value);
        case 'Code16KParams':
          return Code16KParams.fromJson(value);
        case 'CodeLocation':
          return CodeLocation.fromJson(value);
        case 'CouponParams':
          return CouponParams.fromJson(value);
        case 'CustomerInformationInterpretingType':
          return CustomerInformationInterpretingType.fromJson(value);
        case 'DataBarParams':
          return DataBarParams.fromJson(value);
        case 'DataMatrixEccType':
          return DataMatrixEccType.fromJson(value);
        case 'DataMatrixEncodeMode':
          return DataMatrixEncodeMode.fromJson(value);
        case 'DataMatrixParams':
          return DataMatrixParams.fromJson(value);
        case 'DataMatrixVersion':
          return DataMatrixVersion.fromJson(value);
        case 'DecodeBarcodeType':
          return DecodeBarcodeType.fromJson(value);
        case 'DiscUsage':
          return DiscUsage.fromJson(value);
        case 'DotCodeEncodeMode':
          return DotCodeEncodeMode.fromJson(value);
        case 'DotCodeParams':
          return DotCodeParams.fromJson(value);
        case 'ECIEncodings':
          return ECIEncodings.fromJson(value);
        case 'EnableChecksum':
          return EnableChecksum.fromJson(value);
        case 'EncodeBarcodeType':
          return EncodeBarcodeType.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'ErrorDetails':
          return ErrorDetails.fromJson(value);
        case 'FileVersions':
          return FileVersions.fromJson(value);
        case 'FilesList':
          return FilesList.fromJson(value);
        case 'FilesUploadResult':
          return FilesUploadResult.fromJson(value);
        case 'FontMode':
          return FontMode.fromJson(value);
        case 'FontParams':
          return FontParams.fromJson(value);
        case 'FontStyle':
          return FontStyle.fromJson(value);
        case 'GeneratorParams':
          return GeneratorParams.fromJson(value);
        case 'GeneratorParamsList':
          return GeneratorParamsList.fromJson(value);
        case 'HanXinEncodeMode':
          return HanXinEncodeMode.fromJson(value);
        case 'HanXinErrorLevel':
          return HanXinErrorLevel.fromJson(value);
        case 'HanXinParams':
          return HanXinParams.fromJson(value);
        case 'HanXinVersion':
          return HanXinVersion.fromJson(value);
        case 'ITF14BorderType':
          return ITF14BorderType.fromJson(value);
        case 'ITFParams':
          return ITFParams.fromJson(value);
        case 'MacroCharacter':
          return MacroCharacter.fromJson(value);
        case 'MaxiCodeEncodeMode':
          return MaxiCodeEncodeMode.fromJson(value);
        case 'MaxiCodeMode':
          return MaxiCodeMode.fromJson(value);
        case 'MaxiCodeParams':
          return MaxiCodeParams.fromJson(value);
        case 'ObjectExist':
          return ObjectExist.fromJson(value);
        case 'Padding':
          return Padding.fromJson(value);
        case 'PatchCodeParams':
          return PatchCodeParams.fromJson(value);
        case 'PatchFormat':
          return PatchFormat.fromJson(value);
        case 'Pdf417CompactionMode':
          return Pdf417CompactionMode.fromJson(value);
        case 'Pdf417ErrorLevel':
          return Pdf417ErrorLevel.fromJson(value);
        case 'Pdf417MacroTerminator':
          return Pdf417MacroTerminator.fromJson(value);
        case 'Pdf417Params':
          return Pdf417Params.fromJson(value);
        case 'PostalParams':
          return PostalParams.fromJson(value);
        case 'PresetType':
          return PresetType.fromJson(value);
        case 'QREncodeMode':
          return QREncodeMode.fromJson(value);
        case 'QREncodeType':
          return QREncodeType.fromJson(value);
        case 'QRErrorLevel':
          return QRErrorLevel.fromJson(value);
        case 'QRVersion':
          return QRVersion.fromJson(value);
        case 'QrParams':
          return QrParams.fromJson(value);
        case 'ReaderParams':
          return ReaderParams.fromJson(value);
        case 'RegionPoint':
          return RegionPoint.fromJson(value);
        case 'ResultImageInfo':
          return ResultImageInfo.fromJson(value);
        case 'StorageExist':
          return StorageExist.fromJson(value);
        case 'StorageFile':
          return StorageFile.fromJson(value);
        case 'StructuredAppend':
          return StructuredAppend.fromJson(value);
        case 'TextAlignment':
          return TextAlignment.fromJson(value);
        case 'FileVersion':
          return FileVersion.fromJson(value);
        default:
          {
            RegExpMatch? match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              final newTargetType = match![1];
              return value.map((v) => _deserialize(v, newTargetType!)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              final newTargetType = match![1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType!)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(
          0, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(
        0, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') {
      return jsonVal;
    }

    final decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object? obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Http.Response> invokeAPI(
      String path,
      String method,
      List<QueryParam> queryParams,
      Object? body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    await _updateParamsForAuth(queryParams, headerParams);

    final ps = queryParams.map((p) => '${p.name}=${p.value}');
    final String queryString = ps.isNotEmpty ? '?' + ps.join('&') : '';

    final String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if (body is Http.MultipartRequest) {
      final request = Http.MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      final response = await httpClient.send(request);
      return Http.Response.fromStream(response);
    } else {
      final msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return httpClient.post(Uri.parse(url),
              headers: headerParams, body: msgBody);
        case "PUT":
          return httpClient.put(Uri.parse(url),
              headers: headerParams, body: msgBody);
        case "DELETE":
          return httpClient.delete(Uri.parse(url), headers: headerParams);
        case "PATCH":
          return httpClient.patch(Uri.parse(url),
              headers: headerParams, body: msgBody);
        default:
          return httpClient.get(Uri.parse(url), headers: headerParams);
      }
    }
  }

  Future<void> _updateParamsForAuth(
      List<QueryParam> queryParams, Map<String, String> headerParams) async {
    await _authentication.applyToParams(queryParams, headerParams);
  }
}
