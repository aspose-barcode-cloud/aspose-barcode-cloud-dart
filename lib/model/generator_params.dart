part of aspose_barcode_cloud.api;

class GeneratorParams {
  /* Type of barcode to generate. */
  EncodeBarcodeType? typeOfBarcode = null;

/* Text to encode. */
  String? text = null;

/* Text that will be displayed instead of codetext in 2D barcodes. Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode */
  String? twoDDisplayText = null;

/* Specify the displaying Text Location, set to CodeLocation.None to hide CodeText. Default value: CodeLocation.Below. */
  CodeLocation? textLocation = null;

/* Text alignment. */
  TextAlignment? textAlignment = null;

/* Specify the displaying CodeText's Color. Default value: Color.Black. */
  String? textColor = null;

/* Specify the displaying Text's font. Default value: Arial 5pt regular. Ignored if FontSizeMode is set to FontSizeMode.Auto. */
  FontParams? font = null;

/* Specify FontSizeMode. If FontSizeMode is set to Auto, font size will be calculated automatically based on xDimension value. It is recommended to use FontSizeMode.Auto especially in AutoSizeMode.Nearest or AutoSizeMode.Interpolation. Default value: FontSizeMode.Auto. */
  FontMode? fontSizeMode = null;

/* Specify word wraps (line breaks) within text. Default value: false. */
  bool? noWrap = null;

/* Resolution of the BarCode image. One value for both dimensions. Default value: 96 dpi. */
  double? resolution = null;

/* DEPRECATED: Use 'Resolution' instead. */
  double? resolutionX = null;

/* DEPRECATED: Use 'Resolution' instead. */
  double? resolutionY = null;

/* The smallest width of the unit of BarCode bars or spaces. Increase this will increase the whole barcode image width. Ignored if AutoSizeMode property is set to AutoSizeMode.Nearest or AutoSizeMode.Interpolation. */
  double? dimensionX = null;

/* Space between the CodeText and the BarCode in Unit value. Default value: 2pt. Ignored for EAN8, EAN13, UPCE, UPCA, ISBN, ISMN, ISSN, UpcaGs1DatabarCoupon. */
  double? textSpace = null;

/* Common Units for all measuring in query. Default units: pixel. */
  AvailableGraphicsUnit? units = null;

/* Specifies the different types of automatic sizing modes. Default value: AutoSizeMode.None. */
  AutoSizeMode? sizeMode = null;

/* Height of the barcode in given units. Default units: pixel. */
  double? barHeight = null;

/* Height of the barcode image in given units. Default units: pixel. */
  double? imageHeight = null;

/* Width of the barcode image in given units. Default units: pixel. */
  double? imageWidth = null;

/* BarCode image rotation angle, measured in degree, e.g. RotationAngle = 0 or RotationAngle = 360 means no rotation. If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image. Default value: 0. */
  double? rotationAngle = null;

/* Barcode paddings. Default value: 5pt 5pt 5pt 5pt. */
  Padding? padding = null;

/* Additional caption above barcode. */
  CaptionParams? captionAbove = null;

/* Additional caption below barcode. */
  CaptionParams? captionBelow = null;

/* Background color of the barcode image. Default value: Color.White. */
  String? backColor = null;

/* Bars color. Default value: Color.Black. */
  String? barColor = null;

/* Border color. Default value: Color.Black. */
  String? borderColor = null;

/* Border width. Default value: 0. Ignored if Visible is set to false. */
  double? borderWidth = null;

/* Border dash style. Default value: BorderDashStyle.Solid. */
  BorderDashStyle? borderDashStyle = null;

/* Border visibility. If false than parameter Width is always ignored (0). Default value: false. */
  bool? borderVisible = null;

/* Enable checksum during generation 1D barcodes. Default is treated as Yes for symbology which must contain checksum, as No where checksum only possible. Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN, Codabar Checksum always used: Rest symbology */
  EnableChecksum? enableChecksum = null;

/* Indicates whether explains the character \"\\\" as an escape character in CodeText property. Used for Pdf417, DataMatrix, Code128 only If the EnableEscape is true, \"\\\" will be explained as a special escape character. Otherwise, \"\\\" acts as normal characters. Aspose.BarCode supports input decimal ascii code and mnemonic for ASCII control-code characters. For example, \\013 and \\\\CR stands for CR. */
  bool? enableEscape = null;

/* Value indicating whether bars are filled. Only for 1D barcodes. Default value: true. */
  bool? filledBars = null;

/* Always display checksum digit in the human readable text for Code128 and GS1Code128 barcodes. */
  bool? alwaysShowChecksum = null;

/* Wide bars to Narrow bars ratio. Default value: 3, that is, wide bars are 3 times as wide as narrow bars. Used for ITF, PZN, PharmaCode, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, IATA2of5, VIN, DeutschePost, OPC, Code32, DataLogic2of5, PatchCode, Code39Extended, Code39Standard */
  double? wideNarrowRatio = null;

/* Only for 1D barcodes. If codetext is incorrect and value set to true - exception will be thrown. Otherwise codetext will be corrected to match barcode's specification. Exception always will be thrown for: Databar symbology if codetext is incorrect. Exception always will not be thrown for: AustraliaPost, SingaporePost, Code39Extended, Code93Extended, Code16K, Code128 symbology if codetext is incorrect. */
  bool? validateText = null;

/* Supplement parameters. Used for Interleaved2of5, Standard2of5, EAN13, EAN8, UPCA, UPCE, ISBN, ISSN, ISMN. */
  String? supplementData = null;

/* Space between main the BarCode and supplement BarCode. */
  double? supplementSpace = null;

/* Bars reduction value that is used to compensate ink spread while printing. */
  double? barWidthReduction = null;

/* AustralianPost params. */
  AustralianPostParams? australianPost = null;

/* Aztec params. */
  AztecParams? aztec = null;

/* Codabar params. */
  CodabarParams? codabar = null;

/* Codablock params. */
  CodablockParams? codablock = null;

/* Code16K params. */
  Code16KParams? code16K = null;

/* Coupon params. */
  CouponParams? coupon = null;

/* DataBar params. */
  DataBarParams? dataBar = null;

/* DataMatrix params. */
  DataMatrixParams? dataMatrix = null;

/* DotCode params. */
  DotCodeParams? dotCode = null;

/* ITF params. */
  ITFParams? ITF = null;

/* MaxiCode params. */
  MaxiCodeParams? maxiCode = null;

/* Pdf417 params. */
  Pdf417Params? pdf417 = null;

/* Postal params. */
  PostalParams? postal = null;

/* QR params. */
  QrParams? QR = null;

/* PatchCode params. */
  PatchCodeParams? patchCode = null;

  GeneratorParams();

  @override
  String toString() {
    return 'GeneratorParams[typeOfBarcode=$typeOfBarcode, text=$text, twoDDisplayText=$twoDDisplayText, textLocation=$textLocation, textAlignment=$textAlignment, textColor=$textColor, font=$font, fontSizeMode=$fontSizeMode, noWrap=$noWrap, resolution=$resolution, resolutionX=$resolutionX, resolutionY=$resolutionY, dimensionX=$dimensionX, textSpace=$textSpace, units=$units, sizeMode=$sizeMode, barHeight=$barHeight, imageHeight=$imageHeight, imageWidth=$imageWidth, rotationAngle=$rotationAngle, padding=$padding, captionAbove=$captionAbove, captionBelow=$captionBelow, backColor=$backColor, barColor=$barColor, borderColor=$borderColor, borderWidth=$borderWidth, borderDashStyle=$borderDashStyle, borderVisible=$borderVisible, enableChecksum=$enableChecksum, enableEscape=$enableEscape, filledBars=$filledBars, alwaysShowChecksum=$alwaysShowChecksum, wideNarrowRatio=$wideNarrowRatio, validateText=$validateText, supplementData=$supplementData, supplementSpace=$supplementSpace, barWidthReduction=$barWidthReduction, australianPost=$australianPost, aztec=$aztec, codabar=$codabar, codablock=$codablock, code16K=$code16K, coupon=$coupon, dataBar=$dataBar, dataMatrix=$dataMatrix, dotCode=$dotCode, ITF=$ITF, maxiCode=$maxiCode, pdf417=$pdf417, postal=$postal, QR=$QR, patchCode=$patchCode, ]';
  }

  GeneratorParams.fromJson(Map<String, dynamic> json) {
    typeOfBarcode = new EncodeBarcodeType.fromJson(json['typeOfBarcode']);
    text = json['text'];
    twoDDisplayText = json['twoDDisplayText'];
    textLocation = new CodeLocation.fromJson(json['textLocation']);
    textAlignment = new TextAlignment.fromJson(json['textAlignment']);
    textColor = json['textColor'];
    font = new FontParams.fromJson(json['font']);
    fontSizeMode = new FontMode.fromJson(json['fontSizeMode']);
    noWrap = json['noWrap'];
    resolution =
        json['resolution'] == null ? null : json['resolution'].toDouble();
    resolutionX =
        json['resolutionX'] == null ? null : json['resolutionX'].toDouble();
    resolutionY =
        json['resolutionY'] == null ? null : json['resolutionY'].toDouble();
    dimensionX =
        json['dimensionX'] == null ? null : json['dimensionX'].toDouble();
    textSpace = json['textSpace'] == null ? null : json['textSpace'].toDouble();
    units = new AvailableGraphicsUnit.fromJson(json['units']);
    sizeMode = new AutoSizeMode.fromJson(json['sizeMode']);
    barHeight = json['barHeight'] == null ? null : json['barHeight'].toDouble();
    imageHeight =
        json['imageHeight'] == null ? null : json['imageHeight'].toDouble();
    imageWidth =
        json['imageWidth'] == null ? null : json['imageWidth'].toDouble();
    rotationAngle =
        json['rotationAngle'] == null ? null : json['rotationAngle'].toDouble();
    padding = new Padding.fromJson(json['padding']);
    captionAbove = new CaptionParams.fromJson(json['captionAbove']);
    captionBelow = new CaptionParams.fromJson(json['captionBelow']);
    backColor = json['backColor'];
    barColor = json['barColor'];
    borderColor = json['borderColor'];
    borderWidth =
        json['borderWidth'] == null ? null : json['borderWidth'].toDouble();
    borderDashStyle = new BorderDashStyle.fromJson(json['borderDashStyle']);
    borderVisible = json['borderVisible'];
    enableChecksum = new EnableChecksum.fromJson(json['enableChecksum']);
    enableEscape = json['enableEscape'];
    filledBars = json['filledBars'];
    alwaysShowChecksum = json['alwaysShowChecksum'];
    wideNarrowRatio = json['wideNarrowRatio'] == null
        ? null
        : json['wideNarrowRatio'].toDouble();
    validateText = json['validateText'];
    supplementData = json['supplementData'];
    supplementSpace = json['supplementSpace'] == null
        ? null
        : json['supplementSpace'].toDouble();
    barWidthReduction = json['barWidthReduction'] == null
        ? null
        : json['barWidthReduction'].toDouble();
    australianPost = new AustralianPostParams.fromJson(json['australianPost']);
    aztec = new AztecParams.fromJson(json['aztec']);
    codabar = new CodabarParams.fromJson(json['codabar']);
    codablock = new CodablockParams.fromJson(json['codablock']);
    code16K = new Code16KParams.fromJson(json['code16K']);
    coupon = new CouponParams.fromJson(json['coupon']);
    dataBar = new DataBarParams.fromJson(json['dataBar']);
    dataMatrix = new DataMatrixParams.fromJson(json['dataMatrix']);
    dotCode = new DotCodeParams.fromJson(json['dotCode']);
    ITF = new ITFParams.fromJson(json['ITF']);
    maxiCode = new MaxiCodeParams.fromJson(json['maxiCode']);
    pdf417 = new Pdf417Params.fromJson(json['pdf417']);
    postal = new PostalParams.fromJson(json['postal']);
    QR = new QrParams.fromJson(json['QR']);
    patchCode = new PatchCodeParams.fromJson(json['patchCode']);
  }

  Map<String, dynamic> toJson() {
    return {
      'TypeOfBarcode': typeOfBarcode,
      'Text': text,
      'TwoDDisplayText': twoDDisplayText,
      'TextLocation': textLocation,
      'TextAlignment': textAlignment,
      'TextColor': textColor,
      'Font': font,
      'FontSizeMode': fontSizeMode,
      'NoWrap': noWrap,
      'Resolution': resolution,
      'ResolutionX': resolutionX,
      'ResolutionY': resolutionY,
      'DimensionX': dimensionX,
      'TextSpace': textSpace,
      'Units': units,
      'SizeMode': sizeMode,
      'BarHeight': barHeight,
      'ImageHeight': imageHeight,
      'ImageWidth': imageWidth,
      'RotationAngle': rotationAngle,
      'Padding': padding,
      'CaptionAbove': captionAbove,
      'CaptionBelow': captionBelow,
      'BackColor': backColor,
      'BarColor': barColor,
      'BorderColor': borderColor,
      'BorderWidth': borderWidth,
      'BorderDashStyle': borderDashStyle,
      'BorderVisible': borderVisible,
      'EnableChecksum': enableChecksum,
      'EnableEscape': enableEscape,
      'FilledBars': filledBars,
      'AlwaysShowChecksum': alwaysShowChecksum,
      'WideNarrowRatio': wideNarrowRatio,
      'ValidateText': validateText,
      'SupplementData': supplementData,
      'SupplementSpace': supplementSpace,
      'BarWidthReduction': barWidthReduction,
      'AustralianPost': australianPost,
      'Aztec': aztec,
      'Codabar': codabar,
      'Codablock': codablock,
      'Code16K': code16K,
      'Coupon': coupon,
      'DataBar': dataBar,
      'DataMatrix': dataMatrix,
      'DotCode': dotCode,
      'ITF': ITF,
      'MaxiCode': maxiCode,
      'Pdf417': pdf417,
      'Postal': postal,
      'QR': QR,
      'PatchCode': patchCode
    };
  }

  static List<GeneratorParams> listFromJson(List<dynamic> json) {
    return json.map((value) => new GeneratorParams.fromJson(value)).toList();
  }

  static Map<String, GeneratorParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeneratorParams>();
    if (json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GeneratorParams.fromJson(value));
    }
    return map;
  }
}
