// ignore_for_file: non_constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package
import '../../aspose_barcode_cloud.dart';

class GeneratorParams {
  /* Type of barcode to generate. */
  EncodeBarcodeType? typeOfBarcode;

/* Text to encode. */
  String? text;

/* Text that will be displayed instead of codetext in 2D barcodes. Used for: Aztec, Pdf417, DataMatrix, QR, MaxiCode, DotCode */
  String? twoDDisplayText;

/* Specify the displaying Text Location, set to CodeLocation.None to hide CodeText. Default value: CodeLocation.Below. */
  CodeLocation? textLocation;

/* Text alignment. */
  TextAlignment? textAlignment;

/* Specify the displaying CodeText's Color. Default value: Color.Black. */
  String? textColor;

/* Specify the displaying Text's font. Default value: Arial 5pt regular. Ignored if FontSizeMode is set to FontSizeMode.Auto. */
  FontParams? font;

/* Specify FontSizeMode. If FontSizeMode is set to Auto, font size will be calculated automatically based on xDimension value. It is recommended to use FontSizeMode.Auto especially in AutoSizeMode.Nearest or AutoSizeMode.Interpolation. Default value: FontSizeMode.Auto. */
  FontMode? fontSizeMode;

/* Specify word wraps (line breaks) within text. Default value: false. */
  bool? noWrap;

/* Resolution of the BarCode image. One value for both dimensions. Default value: 96 dpi. */
  double? resolution;

/* DEPRECATED: Use 'Resolution' instead. */
  @Deprecated("Use 'Resolution' instead. ")
  double? resolutionX;

/* DEPRECATED: Use 'Resolution' instead. */
  @Deprecated("Use 'Resolution' instead. ")
  double? resolutionY;

/* The smallest width of the unit of BarCode bars or spaces. Increase this will increase the whole barcode image width. Ignored if AutoSizeMode property is set to AutoSizeMode.Nearest or AutoSizeMode.Interpolation. */
  double? dimensionX;

/* Space between the CodeText and the BarCode in Unit value. Default value: 2pt. Ignored for EAN8, EAN13, UPCE, UPCA, ISBN, ISMN, ISSN, UpcaGs1DatabarCoupon. */
  double? textSpace;

/* Common Units for all measuring in query. Default units: pixel. */
  AvailableGraphicsUnit? units;

/* Specifies the different types of automatic sizing modes. Default value: AutoSizeMode.None. */
  AutoSizeMode? sizeMode;

/* Height of the barcode in given units. Default units: pixel. */
  double? barHeight;

/* Height of the barcode image in given units. Default units: pixel. */
  double? imageHeight;

/* Width of the barcode image in given units. Default units: pixel. */
  double? imageWidth;

/* BarCode image rotation angle, measured in degree, e.g. RotationAngle = 0 or RotationAngle = 360 means no rotation. If RotationAngle NOT equal to 90, 180, 270 or 0, it may increase the difficulty for the scanner to read the image. Default value: 0. */
  double? rotationAngle;

/* Barcode paddings. Default value: 5pt 5pt 5pt 5pt. */
  Padding? padding;

/* Additional caption above barcode. */
  CaptionParams? captionAbove;

/* Additional caption below barcode. */
  CaptionParams? captionBelow;

/* Background color of the barcode image. Default value: Color.White. */
  String? backColor;

/* Bars color. Default value: Color.Black. */
  String? barColor;

/* Border color. Default value: Color.Black. */
  String? borderColor;

/* Border width. Default value: 0. Ignored if Visible is set to false. */
  double? borderWidth;

/* Border dash style. Default value: BorderDashStyle.Solid. */
  BorderDashStyle? borderDashStyle;

/* Border visibility. If false than parameter Width is always ignored (0). Default value: false. */
  bool? borderVisible;

/* Enable checksum during generation 1D barcodes. Default is treated as Yes for symbology which must contain checksum, as No where checksum only possible. Checksum is possible: Code39 Standard/Extended, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, DeutschePostIdentcode, DeutschePostLeitcode, VIN, Codabar Checksum always used: Rest symbology */
  EnableChecksum? enableChecksum;

/* Indicates whether explains the character \"\\\" as an escape character in CodeText property. Used for Pdf417, DataMatrix, Code128 only If the EnableEscape is true, \"\\\" will be explained as a special escape character. Otherwise, \"\\\" acts as normal characters. Aspose.BarCode supports input decimal ascii code and mnemonic for ASCII control-code characters. For example, \\013 and \\\\CR stands for CR. */
  bool? enableEscape;

/* Value indicating whether bars are filled. Only for 1D barcodes. Default value: true. */
  bool? filledBars;

/* Always display checksum digit in the human readable text for Code128 and GS1Code128 barcodes. */
  bool? alwaysShowChecksum;

/* Wide bars to Narrow bars ratio. Default value: 3, that is, wide bars are 3 times as wide as narrow bars. Used for ITF, PZN, PharmaCode, Standard2of5, Interleaved2of5, Matrix2of5, ItalianPost25, IATA2of5, VIN, DeutschePost, OPC, Code32, DataLogic2of5, PatchCode, Code39Extended, Code39Standard */
  double? wideNarrowRatio;

/* Only for 1D barcodes. If codetext is incorrect and value set to true - exception will be thrown. Otherwise codetext will be corrected to match barcode's specification. Exception always will be thrown for: Databar symbology if codetext is incorrect. Exception always will not be thrown for: AustraliaPost, SingaporePost, Code39Extended, Code93Extended, Code16K, Code128 symbology if codetext is incorrect. */
  bool? validateText;

/* Supplement parameters. Used for Interleaved2of5, Standard2of5, EAN13, EAN8, UPCA, UPCE, ISBN, ISSN, ISMN. */
  String? supplementData;

/* Space between main the BarCode and supplement BarCode. */
  double? supplementSpace;

/* Bars reduction value that is used to compensate ink spread while printing. */
  double? barWidthReduction;

/* Indicates whether is used anti-aliasing mode to render image. Anti-aliasing mode is applied to barcode and text drawing. */
  bool? useAntiAlias;

/* AustralianPost params. */
  AustralianPostParams? australianPost;

/* Aztec params. */
  AztecParams? aztec;

/* Codabar params. */
  CodabarParams? codabar;

/* Codablock params. */
  CodablockParams? codablock;

/* Code16K params. */
  Code16KParams? code16K;

/* Coupon params. */
  CouponParams? coupon;

/* DataBar params. */
  DataBarParams? dataBar;

/* DataMatrix params. */
  DataMatrixParams? dataMatrix;

/* DotCode params. */
  DotCodeParams? dotCode;

/* ITF params. */
  ITFParams? ITF;

/* MaxiCode params. */
  MaxiCodeParams? maxiCode;

/* Pdf417 params. */
  Pdf417Params? pdf417;

/* Postal params. */
  PostalParams? postal;

/* QR params. */
  QrParams? QR;

/* PatchCode params. */
  PatchCodeParams? patchCode;

/* Code128 params. */
  Code128Params? code128;

/* HanXin params. */
  HanXinParams? hanXin;

  GeneratorParams();

  @override
  String toString() {
    return 'GeneratorParams[typeOfBarcode=$typeOfBarcode, text=$text, twoDDisplayText=$twoDDisplayText, textLocation=$textLocation, textAlignment=$textAlignment, textColor=$textColor, font=$font, fontSizeMode=$fontSizeMode, noWrap=$noWrap, resolution=$resolution, resolutionX=$resolutionX, resolutionY=$resolutionY, dimensionX=$dimensionX, textSpace=$textSpace, units=$units, sizeMode=$sizeMode, barHeight=$barHeight, imageHeight=$imageHeight, imageWidth=$imageWidth, rotationAngle=$rotationAngle, padding=$padding, captionAbove=$captionAbove, captionBelow=$captionBelow, backColor=$backColor, barColor=$barColor, borderColor=$borderColor, borderWidth=$borderWidth, borderDashStyle=$borderDashStyle, borderVisible=$borderVisible, enableChecksum=$enableChecksum, enableEscape=$enableEscape, filledBars=$filledBars, alwaysShowChecksum=$alwaysShowChecksum, wideNarrowRatio=$wideNarrowRatio, validateText=$validateText, supplementData=$supplementData, supplementSpace=$supplementSpace, barWidthReduction=$barWidthReduction, useAntiAlias=$useAntiAlias, australianPost=$australianPost, aztec=$aztec, codabar=$codabar, codablock=$codablock, code16K=$code16K, coupon=$coupon, dataBar=$dataBar, dataMatrix=$dataMatrix, dotCode=$dotCode, ITF=$ITF, maxiCode=$maxiCode, pdf417=$pdf417, postal=$postal, QR=$QR, patchCode=$patchCode, code128=$code128, hanXin=$hanXin, ]';
  }

  GeneratorParams.fromJson(Map<String, dynamic> json) {
    typeOfBarcode = EncodeBarcodeType.fromJson(json['typeOfBarcode']);
    text = json['text'];
    twoDDisplayText = json['twoDDisplayText'];
    textLocation = CodeLocation.fromJson(json['textLocation']);
    textAlignment = TextAlignment.fromJson(json['textAlignment']);
    textColor = json['textColor'];
    font = FontParams.fromJson(json['font']);
    fontSizeMode = FontMode.fromJson(json['fontSizeMode']);
    noWrap = json['noWrap'];
    resolution = json['resolution']?.toDouble();
    resolutionX = json['resolutionX']?.toDouble();
    resolutionY = json['resolutionY']?.toDouble();
    dimensionX = json['dimensionX']?.toDouble();
    textSpace = json['textSpace']?.toDouble();
    units = AvailableGraphicsUnit.fromJson(json['units']);
    sizeMode = AutoSizeMode.fromJson(json['sizeMode']);
    barHeight = json['barHeight']?.toDouble();
    imageHeight = json['imageHeight']?.toDouble();
    imageWidth = json['imageWidth']?.toDouble();
    rotationAngle = json['rotationAngle']?.toDouble();
    padding = Padding.fromJson(json['padding']);
    captionAbove = CaptionParams.fromJson(json['captionAbove']);
    captionBelow = CaptionParams.fromJson(json['captionBelow']);
    backColor = json['backColor'];
    barColor = json['barColor'];
    borderColor = json['borderColor'];
    borderWidth = json['borderWidth']?.toDouble();
    borderDashStyle = BorderDashStyle.fromJson(json['borderDashStyle']);
    borderVisible = json['borderVisible'];
    enableChecksum = EnableChecksum.fromJson(json['enableChecksum']);
    enableEscape = json['enableEscape'];
    filledBars = json['filledBars'];
    alwaysShowChecksum = json['alwaysShowChecksum'];
    wideNarrowRatio = json['wideNarrowRatio']?.toDouble();
    validateText = json['validateText'];
    supplementData = json['supplementData'];
    supplementSpace = json['supplementSpace']?.toDouble();
    barWidthReduction = json['barWidthReduction']?.toDouble();
    useAntiAlias = json['useAntiAlias'];
    australianPost = AustralianPostParams.fromJson(json['australianPost']);
    aztec = AztecParams.fromJson(json['aztec']);
    codabar = CodabarParams.fromJson(json['codabar']);
    codablock = CodablockParams.fromJson(json['codablock']);
    code16K = Code16KParams.fromJson(json['code16K']);
    coupon = CouponParams.fromJson(json['coupon']);
    dataBar = DataBarParams.fromJson(json['dataBar']);
    dataMatrix = DataMatrixParams.fromJson(json['dataMatrix']);
    dotCode = DotCodeParams.fromJson(json['dotCode']);
    ITF = ITFParams.fromJson(json['ITF']);
    maxiCode = MaxiCodeParams.fromJson(json['maxiCode']);
    pdf417 = Pdf417Params.fromJson(json['pdf417']);
    postal = PostalParams.fromJson(json['postal']);
    QR = QrParams.fromJson(json['QR']);
    patchCode = PatchCodeParams.fromJson(json['patchCode']);
    code128 = Code128Params.fromJson(json['code128']);
    hanXin = HanXinParams.fromJson(json['hanXin']);
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
      'UseAntiAlias': useAntiAlias,
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
      'PatchCode': patchCode,
      'Code128': code128,
      'HanXin': hanXin
    };
  }

  static List<GeneratorParams> listFromJson(List<dynamic> json) {
    return json.map((value) => GeneratorParams.fromJson(value)).toList();
  }

  static Map<String, GeneratorParams> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    final map = <String, GeneratorParams>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = GeneratorParams.fromJson(value));
    }
    return map;
  }
}
