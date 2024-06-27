# CHANGELOG

## 1.24.6

* June 2024 Release

## 1.24.5

* May 2024 Release

## 1.24.4

* Minimal version of Dart SDK updated from **2.12.0** to **2.17.0**
* Added new **scanBarcode** endpoint for quick scan
* Improved enum names

## 1.24.3

* March 2024 Release

## 1.24.2

* Improve code quality
* Use lints/recommended.yaml instead of lints/core.yaml

## 1.24.1

* "types" param for multiple barcode types to read added.
* mostCommonlyUsed decode type added.

## 0.23.12

* December 2023 release

## 0.23.11

* Added new `GS1MicroPdf417` type
* Added new properties for `Pdf417` generation:
  * `IsCode128Emulation`. Can be used only with `MicroPdf417` and encodes Code 128 emulation modes
  * `IsLinked`. Defines linked modes with `GS1MicroPdf417`, `MicroPdf417` and `Pdf417` barcodes
  * `IsCode128Emulation`. Can be used only with `MicroPdf417` and encodes Code 128 emulation modes

## 0.23.10

* October 2023 release

## 0.23.9

* Improve package structure by removing 'part' directive and 'part of'
* ApiClient parameters moved to Configuration

## 0.23.8

* Added AllowAdditionalRestorations flag to reader params
* Added DataMatrixVersion enum and DataMatrixVersion param into DataMatrixParams

## 0.23.7

* Improved code quality
* Added lints and additional checks
* Update http dependency version

## 0.23.6

* Add new code for HanXin

## 0.23.5

* Add Code128Params.Code128EncodeMode generator parameter

## 0.23.4

* Add useAntiAlias generate parameter
* Remove useless  rectangleRegion recognize parameter

## 0.23.3

* Added test with Timeout

## 0.23.2

* Fixed issues with code style
* Added linter

## 0.23.1

* January 2023 release
* dotCodeMask deleted
* DotCodeEncodeMode added
* DotCode params added
* MaxiCodeEncodeMode added
* HIBC decode types added

## 0.22.12

* December 2022 release
* dotCodeMask mark as DEPRECATED and will be calculated automatically

## 0.22.11

* November 2022 release

## 0.22.10

* October 2022 release

## 0.22.9

* September 2022 release

## 0.22.8

* August 2022 release

## 0.22.7

* Stable release

## 0.21.12

* Initial release
