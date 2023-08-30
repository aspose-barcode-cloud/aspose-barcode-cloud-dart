# aspose_barcode_cloud.model.DataMatrixParams

## Load the model package

```dart
import 'package:aspose_barcode_cloud/api.dart';
```
DataMatrix parameters.

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**aspectRatio** | **double** | Height/Width ratio of 2D BarCode module | [optional] [default to null]
**textEncoding** | **String** | Encoding of codetext. | [optional] [default to null]
**columns** | **int** | DEPRECATED: Will be replaced with &#39;DataMatrix.Version&#39; in the next release  Columns count. | [optional] [default to null]
**dataMatrixEcc** | [**DataMatrixEccType**](DataMatrixEccType.md) | Datamatrix ECC type. Default value: DataMatrixEccType.Ecc200. | [optional] [default to null]
**dataMatrixEncodeMode** | [**DataMatrixEncodeMode**](DataMatrixEncodeMode.md) | Encode mode of Datamatrix barcode. Default value: DataMatrixEncodeMode.Auto. | [optional] [default to null]
**rows** | **int** | DEPRECATED: Will be replaced with &#39;DataMatrix.Version&#39; in the next release  Rows count. | [optional] [default to null]
**macroCharacters** | [**MacroCharacter**](MacroCharacter.md) | Macro Characters 05 and 06 values are used to obtain more compact encoding in special modes. Can be used only with DataMatrixEccType.Ecc200 or DataMatrixEccType.EccAuto. Cannot be used with EncodeTypes.GS1DataMatrix Default value: MacroCharacters.None. | [optional] [default to null]
**version** | [**DataMatrixVersion**](DataMatrixVersion.md) | Sets a Datamatrix symbol size. Default value: DataMatrixVersion.Auto. | [optional] [default to null]

