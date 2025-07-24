# aspose_barcode_cloud.api.ScanApi

## Load the API package
```dart
import 'package:aspose_barcode_cloud/aspose_barcode_cloud.dart';
```

All URIs are relative to *https://api.aspose.cloud/v4.0*

Method | HTTP request | Description
------ | ------------ | -----------
[**scan**](ScanApi.md#scan) | **GET** /barcode/scan | Scan barcode from file on server in the Internet using GET requests with parameter in query string. For scaning files from your hard drive use &#x60;scan-body&#x60; or &#x60;scan-multipart&#x60; endpoints instead.
[**scanBase64**](ScanApi.md#scanBase64) | **POST** /barcode/scan-body | Scan barcode from file in request body using POST requests with parameter in body in json or xml format.
[**scanMultipart**](ScanApi.md#scanMultipart) | **POST** /barcode/scan-multipart | Scan barcode from file in request body using POST requests with parameter in multipart form.


# **scan**
> BarcodeResponseList scan(fileUrl)

Scan barcode from file on server in the Internet using GET requests with parameter in query string. For scaning files from your hard drive use `scan-body` or `scan-multipart` endpoints instead.

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


# **scanBase64**
> BarcodeResponseList scanBase64(scanBase64Request)

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


# **scanMultipart**
> BarcodeResponseList scanMultipart(file)

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


