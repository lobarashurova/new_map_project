import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/model/source/remote/api/api_service.dart';
import '../domain/AppRepository.dart';
import '../domain/impl/AppRepositoryImpl.dart';

final getIt = GetIt.instance;
final dio = Dio(BaseOptions(
    baseUrl: 'https://qutb.uz/api/',
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    contentType: 'application/json',
    receiveDataWhenStatusError: true));

void setup() {
  getIt.registerSingleton<ApiClient>(ApiClient(dio));
  getIt.registerSingleton<AppRepository>(AppRepositoryImpl());
}
