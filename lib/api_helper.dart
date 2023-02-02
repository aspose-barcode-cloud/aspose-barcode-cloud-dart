part of aspose_barcode_cloud.api;

const _delimiters = const {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};

// port from Java version
Iterable<QueryParam> _convertParametersForCollectionFormat(
    String collectionFormat, String name, dynamic value) {
  final params = <QueryParam>[];

  // preconditions
  if (name.isEmpty || value == null) return params;

  if (value is! List) {
    params.add(new QueryParam(name, parameterToString(value)));
    return params;
  }

  List values = value;

  // get the collection format
  collectionFormat =
      collectionFormat.isEmpty ? "csv" : collectionFormat; // default: csv

  if (collectionFormat == "multi") {
    return values.map((v) => new QueryParam(name, parameterToString(v)));
  }

  String delimiter = _delimiters[collectionFormat] ?? ",";

  params.add(new QueryParam(
      name, values.map((v) => parameterToString(v)).join(delimiter)));
  return params;
}

/// Format the given parameter object into string.
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  } else if (value is DateTime) {
    return value.toUtc().toIso8601String();
  } else if (value is AutoSizeMode) {
    return AutoSizeMode.encode(value).toString();
  } else if (value is AvailableGraphicsUnit) {
    return AvailableGraphicsUnit.encode(value).toString();
  } else if (value is AztecSymbolMode) {
    return AztecSymbolMode.encode(value).toString();
  } else if (value is BorderDashStyle) {
    return BorderDashStyle.encode(value).toString();
  } else if (value is ChecksumValidation) {
    return ChecksumValidation.encode(value).toString();
  } else if (value is CodabarChecksumMode) {
    return CodabarChecksumMode.encode(value).toString();
  } else if (value is CodabarSymbol) {
    return CodabarSymbol.encode(value).toString();
  } else if (value is Code128Emulation) {
    return Code128Emulation.encode(value).toString();
  } else if (value is CodeLocation) {
    return CodeLocation.encode(value).toString();
  } else if (value is CustomerInformationInterpretingType) {
    return CustomerInformationInterpretingType.encode(value).toString();
  } else if (value is DataMatrixEccType) {
    return DataMatrixEccType.encode(value).toString();
  } else if (value is DataMatrixEncodeMode) {
    return DataMatrixEncodeMode.encode(value).toString();
  } else if (value is DecodeBarcodeType) {
    return DecodeBarcodeType.encode(value).toString();
  } else if (value is DotCodeEncodeMode) {
    return DotCodeEncodeMode.encode(value).toString();
  } else if (value is ECIEncodings) {
    return ECIEncodings.encode(value).toString();
  } else if (value is EnableChecksum) {
    return EnableChecksum.encode(value).toString();
  } else if (value is EncodeBarcodeType) {
    return EncodeBarcodeType.encode(value).toString();
  } else if (value is FontMode) {
    return FontMode.encode(value).toString();
  } else if (value is FontStyle) {
    return FontStyle.encode(value).toString();
  } else if (value is ITF14BorderType) {
    return ITF14BorderType.encode(value).toString();
  } else if (value is MacroCharacter) {
    return MacroCharacter.encode(value).toString();
  } else if (value is MaxiCodeEncodeMode) {
    return MaxiCodeEncodeMode.encode(value).toString();
  } else if (value is MaxiCodeMode) {
    return MaxiCodeMode.encode(value).toString();
  } else if (value is PatchFormat) {
    return PatchFormat.encode(value).toString();
  } else if (value is Pdf417CompactionMode) {
    return Pdf417CompactionMode.encode(value).toString();
  } else if (value is Pdf417ErrorLevel) {
    return Pdf417ErrorLevel.encode(value).toString();
  } else if (value is Pdf417MacroTerminator) {
    return Pdf417MacroTerminator.encode(value).toString();
  } else if (value is PresetType) {
    return PresetType.encode(value).toString();
  } else if (value is QREncodeMode) {
    return QREncodeMode.encode(value).toString();
  } else if (value is QREncodeType) {
    return QREncodeType.encode(value).toString();
  } else if (value is QRErrorLevel) {
    return QRErrorLevel.encode(value).toString();
  } else if (value is QRVersion) {
    return QRVersion.encode(value).toString();
  } else if (value is TextAlignment) {
    return TextAlignment.encode(value).toString();
  } else {
    return value.toString();
  }
}
