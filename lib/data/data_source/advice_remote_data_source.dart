import 'dart:convert';

import '../model/advice_model.dart';
import 'package:http/http.dart' as http;

abstract class AdviceRemoteDataSource {
  Future<AdviceModel> getRandomAdvice();

  Future<AdviceModel> getAdviceById(int id);
}

class HttpDataSource extends AdviceRemoteDataSource {
  static const String _baseUrl = 'https://api.adviceslip.com/';

  @override
  Future<AdviceModel> getAdviceById(int id) async {
    final url = Uri.parse('${_baseUrl}advice/$id');
    try {
      final response = await http.get(url);
      final json = jsonDecode(response.body) as Map;
      return AdviceModel.fromJson(json["slip"]);
    } on Error catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<AdviceModel> getRandomAdvice() async {
    final url = Uri.parse('${_baseUrl}advice');
    try {
      final response = await http.get(url);
      final json = jsonDecode(response.body) as Map;
      return AdviceModel.fromJson(json["slip"]);
    } on Error catch (e) {
      throw Exception(e);
    }
  }
}
