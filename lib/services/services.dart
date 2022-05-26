import 'dart:convert';

import 'package:bee_guided/model/response/response.dart';
import 'package:bee_guided/util/constants.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String noInternetMessage =
      'Connection to API server failed due to internet connection';
  final int timeoutInSeconds = 30;

  Future<dynamic> getData(String uri,
      {Map<String, dynamic>? query, Map<String, String>? headers}) async {
    try {
      var url = Uri.parse(appBaseUrl + uri);

      final response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
      ).timeout(
        Duration(
          seconds: timeoutInSeconds,
        ),
      );
      final responseData = json.decode(response.body);
      if (responseData != null) {
        return Response(
            statusCode: response.statusCode,
            response: responseData,
            message: "Success");
      }
    } catch (e) {
      return const Response(
        statusCode: 1,
        message: noInternetMessage,
      );
    }
  }

  Future<dynamic> postData(String uri, dynamic body,
      {Map<String, String>? headers}) async {
    try {
      var url = Uri.parse(appBaseUrl + uri);

      debugPrint('====> API Response: $url');
      final response = await http.post(
        url,
        body: body,
        headers: {"Accept": "application/json"},
      ).timeout(
        Duration(
          seconds: timeoutInSeconds,
        ),
      );
      final responseData = json.decode(response.body);

      if (responseData != null) {
        return Response(
            statusCode: response.statusCode,
            response: responseData,
            message: "Success");
      }
    } catch (e) {
      return const Response(
        statusCode: 1,
        message: noInternetMessage,
      );
    }
  }
}
