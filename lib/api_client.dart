part of aspose_barcode_cloud.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {
  String basePath;
  var client = new Client();

  Map<String, String> _defaultHeaderMap = {};
  late Authentication _authentication;

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient(
      {String? clientId,
      String? clientSecret,
      String? accessToken,
      tokenUrl: "https://api.aspose.cloud/connect/token",
      this.basePath: "https://api.aspose.cloud/v3.0"}) {
    _authentication = new OAuth(
        clientId: clientId,
        clientSecret: clientSecret,
        accessToken: accessToken,
        tokenUrl: tokenUrl);
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
          return new ApiError.fromJson(value);
        case 'ApiErrorResponse':
          return new ApiErrorResponse.fromJson(value);
        case 'AustralianPostParams':
          return new AustralianPostParams.fromJson(value);
        case 'AutoSizeMode':
          return new AutoSizeMode.fromJson(value);
        case 'AvailableGraphicsUnit':
          return new AvailableGraphicsUnit.fromJson(value);
        case 'AztecParams':
          return new AztecParams.fromJson(value);
        case 'AztecSymbolMode':
          return new AztecSymbolMode.fromJson(value);
        case 'BarcodeResponse':
          return new BarcodeResponse.fromJson(value);
        case 'BarcodeResponseList':
          return new BarcodeResponseList.fromJson(value);
        case 'BorderDashStyle':
          return new BorderDashStyle.fromJson(value);
        case 'CaptionParams':
          return new CaptionParams.fromJson(value);
        case 'ChecksumValidation':
          return new ChecksumValidation.fromJson(value);
        case 'CodabarChecksumMode':
          return new CodabarChecksumMode.fromJson(value);
        case 'CodabarParams':
          return new CodabarParams.fromJson(value);
        case 'CodabarSymbol':
          return new CodabarSymbol.fromJson(value);
        case 'CodablockParams':
          return new CodablockParams.fromJson(value);
        case 'Code128Emulation':
          return new Code128Emulation.fromJson(value);
        case 'Code16KParams':
          return new Code16KParams.fromJson(value);
        case 'CodeLocation':
          return new CodeLocation.fromJson(value);
        case 'CouponParams':
          return new CouponParams.fromJson(value);
        case 'CustomerInformationInterpretingType':
          return new CustomerInformationInterpretingType.fromJson(value);
        case 'DataBarParams':
          return new DataBarParams.fromJson(value);
        case 'DataMatrixEccType':
          return new DataMatrixEccType.fromJson(value);
        case 'DataMatrixEncodeMode':
          return new DataMatrixEncodeMode.fromJson(value);
        case 'DataMatrixParams':
          return new DataMatrixParams.fromJson(value);
        case 'DecodeBarcodeType':
          return new DecodeBarcodeType.fromJson(value);
        case 'DiscUsage':
          return new DiscUsage.fromJson(value);
        case 'DotCodeParams':
          return new DotCodeParams.fromJson(value);
        case 'ECIEncodings':
          return new ECIEncodings.fromJson(value);
        case 'EnableChecksum':
          return new EnableChecksum.fromJson(value);
        case 'EncodeBarcodeType':
          return new EncodeBarcodeType.fromJson(value);
        case 'Error':
          return new Error.fromJson(value);
        case 'ErrorDetails':
          return new ErrorDetails.fromJson(value);
        case 'FileVersions':
          return new FileVersions.fromJson(value);
        case 'FilesList':
          return new FilesList.fromJson(value);
        case 'FilesUploadResult':
          return new FilesUploadResult.fromJson(value);
        case 'FontMode':
          return new FontMode.fromJson(value);
        case 'FontParams':
          return new FontParams.fromJson(value);
        case 'FontStyle':
          return new FontStyle.fromJson(value);
        case 'GeneratorParams':
          return new GeneratorParams.fromJson(value);
        case 'GeneratorParamsList':
          return new GeneratorParamsList.fromJson(value);
        case 'ITF14BorderType':
          return new ITF14BorderType.fromJson(value);
        case 'ITFParams':
          return new ITFParams.fromJson(value);
        case 'MacroCharacter':
          return new MacroCharacter.fromJson(value);
        case 'MaxiCodeMode':
          return new MaxiCodeMode.fromJson(value);
        case 'MaxiCodeParams':
          return new MaxiCodeParams.fromJson(value);
        case 'ObjectExist':
          return new ObjectExist.fromJson(value);
        case 'Padding':
          return new Padding.fromJson(value);
        case 'PatchCodeParams':
          return new PatchCodeParams.fromJson(value);
        case 'PatchFormat':
          return new PatchFormat.fromJson(value);
        case 'Pdf417CompactionMode':
          return new Pdf417CompactionMode.fromJson(value);
        case 'Pdf417ErrorLevel':
          return new Pdf417ErrorLevel.fromJson(value);
        case 'Pdf417MacroTerminator':
          return new Pdf417MacroTerminator.fromJson(value);
        case 'Pdf417Params':
          return new Pdf417Params.fromJson(value);
        case 'PostalParams':
          return new PostalParams.fromJson(value);
        case 'PresetType':
          return new PresetType.fromJson(value);
        case 'QREncodeMode':
          return new QREncodeMode.fromJson(value);
        case 'QREncodeType':
          return new QREncodeType.fromJson(value);
        case 'QRErrorLevel':
          return new QRErrorLevel.fromJson(value);
        case 'QRVersion':
          return new QRVersion.fromJson(value);
        case 'QrParams':
          return new QrParams.fromJson(value);
        case 'ReaderParams':
          return new ReaderParams.fromJson(value);
        case 'RegionPoint':
          return new RegionPoint.fromJson(value);
        case 'ResultImageInfo':
          return new ResultImageInfo.fromJson(value);
        case 'StorageExist':
          return new StorageExist.fromJson(value);
        case 'StorageFile':
          return new StorageFile.fromJson(value);
        case 'StructuredAppend':
          return new StructuredAppend.fromJson(value);
        case 'TextAlignment':
          return new TextAlignment.fromJson(value);
        case 'FileVersion':
          return new FileVersion.fromJson(value);
        default:
          {
            RegExpMatch? match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match![1];
              return value.map((v) => _deserialize(v, newTargetType!)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match![1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType!)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw new ApiException.withInner(
          0, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(
        0, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
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
  Future<Response> invokeAPI(
      String path,
      String method,
      List<QueryParam> queryParams,
      Object? body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    await _updateParamsForAuth(queryParams, headerParams);

    var ps = queryParams.map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ? '?' + ps.join('&') : '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if (body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return client.post(Uri.parse(url),
              headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(Uri.parse(url),
              headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(Uri.parse(url), headers: headerParams);
        case "PATCH":
          return client.patch(Uri.parse(url),
              headers: headerParams, body: msgBody);
        default:
          return client.get(Uri.parse(url), headers: headerParams);
      }
    }
  }

  Future<void> _updateParamsForAuth(
      List<QueryParam> queryParams, Map<String, String> headerParams) async {
    await _authentication.applyToParams(queryParams, headerParams);
  }
}
