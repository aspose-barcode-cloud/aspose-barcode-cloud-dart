# aspose_barcode_cloud.api.ScanApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```

All URIs are relative to *http://api.aspose.cloud/v4.0*

Method | HTTP request | Description
------ | ------------ | -----------
[**scanBase64PostV4**](ScanApi.md#scanBase64PostV4) | **POST** /barcode/scan-body | Scan barcode from file in request body using POST requests with parameter in body in json or xml format.
[**scanFormPostV4**](ScanApi.md#scanFormPostV4) | **POST** /barcode/scan-multipart | Scan barcode from file in request body using POST requests with parameter in multipart form.
[**scanGetV4**](ScanApi.md#scanGetV4) | **GET** /barcode/scan | Scan barcode from file on server using GET requests with parameter in query string.


# **scanBase64PostV4**
> BarcodeResponseList scanBase64PostV4(scanBase64Request)

Scan barcode from file in request body using POST requests with parameter in body in json or xml format.

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **scanBase64Request** | [**ScanBase64Request**](ScanBase64Request.md)| Barcode scan request | 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml


# **scanFormPostV4**
> BarcodeResponseList scanFormPostV4(file)

Scan barcode from file in request body using POST requests with parameter in multipart form.

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **file** | **MultipartFile****MultipartFile**| Barcode image file | 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/xml


# **scanGetV4**
> BarcodeResponseList scanGetV4(fileUrl)

Scan barcode from file on server using GET requests with parameter in query string.

### Parameters

Name | Type | Description  | Notes
---- | ---- | ------------ | -----
 **fileUrl** | **String**| Url to barcode image | 

### Return type

[**BarcodeResponseList**](BarcodeResponseList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml


