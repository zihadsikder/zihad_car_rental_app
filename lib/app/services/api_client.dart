// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../core/utils/network_response.dart';
// import 'auth_cache.dart';
//
// class ApiClient {
//   final auth = Get.find<AuthCache>();
//
//   Future<NetworkResponse> postRequest(String url,
//       {Map<String, dynamic>? body, String? token}) async {
//     try {
//       log(url);
//       log(body.toString());
//       final response =
//       await post(Uri.parse(url), body: jsonEncode(body), headers: {
//         'Content-Type': 'application/json',
//         'Authorization': AuthCache.to.checkAuthState()
//             ? "Bearer ${AuthCache.to.getToken()}"
//             : "",
//       });
//       log(response.statusCode.toString());
//       log(response.body.toString());
//       if (response.statusCode == 200) {
//         final responseBodyJson = jsonDecode(response.body);
//         return NetworkResponse(
//           isSuccess: true,
//           jsonResponse: response.body,
//           statusCode: 200,
//           message: responseBodyJson['message'] ?? 'Something went wrong',
//         );
//       } else {
//         final responseBodyJson = jsonDecode(response.body);
//         Get.snackbar(
//           'Message',
//           responseBodyJson['message'] ?? 'Try Again Later',
//           backgroundColor: Colors.red,
//           colorText: Colors.white,
//         );
//
//         return NetworkResponse(
//           isSuccess: false,
//           statusCode: response.statusCode,
//           jsonResponse: jsonDecode(response.body),
//           message: responseBodyJson['message'] ?? 'Something went wrong',
//         );
//       }
//     } catch (e) {
//       return NetworkResponse(isSuccess: false, message: e.toString());
//     }
//   }
//
//   Future<NetworkResponse> getRequest(String url, {String? token}) async {
//     try {
//       log(url);
//       log(token.toString());
//       final response = await get(Uri.parse(url), headers: {
//         'Content-Type': 'application/json',
//         'Authorization': AuthCache.to.checkAuthState()
//             ? "Bearer ${AuthCache.to.getToken()}"
//             : "",
//       });
//       log(response.headers.toString());
//       log(response.statusCode.toString());
//       log(response.body.toString());
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final responseBodyJson = jsonDecode(response.body);
//
//         return NetworkResponse(
//           isSuccess: true,
//           jsonResponse: response.body,
//           statusCode: 200,
//           message: responseBodyJson['message'] ?? 'Something went wrong',
//         );
//       } else if (response.statusCode == 401) {
//         //backToLogin();
//         return NetworkResponse(
//           isSuccess: false,
//           statusCode: response.statusCode,
//           jsonResponse: jsonDecode(response.body),
//         );
//       } else {
//         final responseBodyJson = jsonDecode(response.body);
//         Get.snackbar(
//           'Message',
//           responseBodyJson['message'] ?? 'Try Again Later',
//           backgroundColor: Colors.red,
//           colorText: Colors.white,
//         );
//
//         return NetworkResponse(
//           isSuccess: false,
//           statusCode: response.statusCode,
//           jsonResponse: response.body,
//           message: responseBodyJson['message'] ?? 'Something went wrong',
//         );
//       }
//     } catch (e) {
//       return NetworkResponse(isSuccess: false, message: e.toString());
//     }
//   }
//
//   Future<NetworkResponse> putRequest(String url,
//       {Map<String, dynamic>? body, String? token}) async {
//     try {
//       log(url);
//       log(body.toString());
//       final response =
//       await put(Uri.parse(url), body: jsonEncode(body), headers: {
//         'Content-Type': 'application/json',
//         'Authorization': AuthCache.to.checkAuthState()
//             ? "Bearer ${AuthCache.to.getToken()}"
//             : "",
//       });
//       log(response.statusCode.toString());
//       log(response.body.toString());
//
//       if (response.statusCode == 200) {
//         final responseBodyJson = jsonDecode(response.body);
//         return NetworkResponse(
//           isSuccess: true,
//           jsonResponse: response.body,
//           statusCode: 200,
//           message: responseBodyJson['message'] ?? 'Something went wrong',
//         );
//       } else {
//         final responseBodyJson = jsonDecode(response.body);
//         Get.snackbar(
//           'Message',
//           responseBodyJson['message'] ?? 'Try Again Later',
//           backgroundColor: Colors.red,
//           colorText: Colors.white,
//         );
//
//         return NetworkResponse(
//           isSuccess: false,
//           statusCode: response.statusCode,
//           jsonResponse: jsonDecode(response.body),
//           message: responseBodyJson['message'] ?? 'Something went wrong',
//         );
//       }
//     } catch (e) {
//       return NetworkResponse(isSuccess: false, message: e.toString());
//     }
//   }
//
// }