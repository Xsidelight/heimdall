import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class Heimdall {
  Dio dio = Dio();
  JsonEncoder encoder = JsonEncoder.withIndent('  ');

  void getHttp(String url) async {
    try {
      stdout.writeln('Please enter url');
      var response = await dio.get(url);
      var jsonBody = encoder.convert(response.data);
      stdout.write(jsonBody);
    } catch (e) {
      print(e);
    }
  }

  void postHttp(String url, Map<String, dynamic> data) async {
    try {
      var response = await dio.post(url, data: data);
      stdout.writeln(response);
    } catch (e) {
      print(e);
    }
  }

  void putHttp(String url, Map<String, dynamic> data) async {
    try {
      var response = await dio.post(url, data: data);
      stdout.writeln(response);
    } catch (e) {
      print(e);
    }
  }

  void patchHttp(String url, Map<String, dynamic> data) async {
    try {
      var response = await dio.post(url, data: data);
      stdout.writeln(response);
    } catch (e) {
      print(e);
    }
  }

  void deleteHttp(String url, Map<String, dynamic> data) async {
    try {
      var response = await dio.post(url, data: data);
      stdout.writeln(response);
    } catch (e) {
      print(e);
    }
  }

  void userInput() async {
    stdout.writeln('Please enter url');
    String? input = stdin.readLineSync();
    switch (input) {
      case 'heimdall GET':
        getHttp(input!);
        break;
      case 'heimdall POST':
        postHttp(input!, input as Map<String, dynamic>);
        break;
      case 'heimdall PUT':
        putHttp(input!, input as Map<String, dynamic>);
        break;
      default:
        exit(2);
    }
  }
}
