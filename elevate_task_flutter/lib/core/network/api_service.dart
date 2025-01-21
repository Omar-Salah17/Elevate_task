import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class ApiService {
  final baseUrl = 'http://';

  Dio dio = Dio();
 

  

  Future<Response> post({
    required String endPoints,
    required Map<String, dynamic> data,
    Map<String, String>? headers,
  }) async {


    try {
      var response = await dio.post(
        '$baseUrl$endPoints',
        data: data,
        options: Options(
          method: 'POST',

        ),
      );
      return response;
    } catch (error) {
      debugPrint(' $error');
      rethrow; // Re-throw the error for handling in the caller
    }
  }

  Future<Map<String, dynamic>> get({
    required String endpoint,
    Map<String, String>? headers,
  }) async {

    try {
      var response = await dio.get(
        '$baseUrl$endpoint',
        options: Options(
    
        ),
      );
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}

