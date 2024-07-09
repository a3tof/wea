import 'dart:developer';

import 'package:weather_app/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'fbe7a297009d4cfa86660956243006';
  WeatherServices(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMesaage =
          e.response?.data['error']['message'] ?? // not equal null
              'oops there was an error, try again later'; // equal null
      throw Exception(errorMesaage);
    } catch (e) {
      // If there is an exception found other than DioException
      log(e.toString());
      throw Exception('oops there was an error, try again later');
    }
  }
}
