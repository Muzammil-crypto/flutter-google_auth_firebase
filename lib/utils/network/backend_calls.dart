import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../constants/endpoints.dart';
import '../services/local_storage_service.dart';

class BackendCall {
  String get _url => baseUrl;

  Uri _getUri(String endpoint) => Uri.parse('$_url/$endpoint');

  Future<String> postRequest({
    required String endpoint,
    required Map<String, dynamic> body,
    required bool tokenRequired,
  }) async {
    Response? response;
    try {
      String? token = await LocalStorageService().getToken();
      Uri uri = _getUri(endpoint);
      response = await post(
        uri,
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Charset': 'utf-8',
          'Authorization': tokenRequired ? 'Bearer $token' : "",
        },
        body: json.encode(body),
        encoding: Encoding.getByName('utf-8'),
      );
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        return response.body;
      } else {
        _postError(
          endpoint: endpoint,
          statusCode: response.statusCode,
          body: response.body,
        );
        return "";
      }
    } catch (ex, stackTrace) {
      String responseStr = 'No Response';
      if (response != null) {
        responseStr = response.body;
      }

      _postError(
        endpoint: endpoint,
        statusCode: response?.statusCode ?? 0,
        body: responseStr,
      );
      return "";
    }
  }

  Future<String> getRequest({
    required String endpoint,
    required Map<String, dynamic> body,
    String? parameters,
  }) async {
    Response? response;
    try {
      String? token = await LocalStorageService().getToken();
      Uri uri;
      if (parameters == null) {
        uri = _getUri(endpoint);
      } else {
        uri = _getUri(endpoint).replace(query: parameters);
      }
      response = await get(
        uri,
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Charset': 'utf-8',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        return response.body;
      } else {
        return "";
      }
    } catch (ex, stackTrace) {
      String responseStr = 'No Response';
      if (response != null) {
        responseStr = response.body;
      }
      _postError(
        endpoint: endpoint,
        statusCode: response?.statusCode ?? 0,
        body: responseStr,
      );
    }
    throw Exception('backend error');
  }

  void _postError(
      {required String endpoint,
      required int statusCode,
      required String body}) {
    debugPrint(
        'Backend error -> \nurl -> $endpoint\nstatus code -> $statusCode\nbody -> $body');
  }
}
