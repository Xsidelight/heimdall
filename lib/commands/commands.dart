import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class Command {
  Dio dio = Dio();
  JsonEncoder encoder = JsonEncoder.withIndent('  ');

  void getHttp(String url) async {
    try {
      var response = await dio.get(url);
      var jsonBody = encoder.convert(response.data);
      stdout.write('\x1B[34m$jsonBody\x1B[0m');
    } catch (e) {
      print(e);
    }
  }

  void postHttp(String url, Map<String, dynamic> data) async {
    try {
      var response = await dio.post(url, data: data);
      var jsonBody = encoder.convert(response.data);
      stdout.write('\x1B[34m$jsonBody\x1B[0m');
    } catch (e) {
      print(e);
    }
  }

  void putHttp(String url, Map<String, dynamic> data) async {
    try {
      var response = await dio.put(url, data: data);
      stdout.writeln(response);
    } catch (e) {
      print(e);
    }
  }

  void patchHttp(String url, Map<String, dynamic>? data) async {
    try {
      var response = await dio.patch(url, data: data);
      stdout.writeln(response);
    } catch (e) {
      print(e);
    }
  }

  void deleteHttp(String url, Map<String, dynamic>? data) async {
    try {
      var response = await dio.delete(url, data: data);
      stdout.writeln(response);
    } catch (e) {
      print(e);
    }
  }
}
