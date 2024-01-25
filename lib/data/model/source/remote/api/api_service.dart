import 'package:dio/dio.dart';
import 'package:new_map_project/data/model/source/remote/request/map/map_reuqest.dart';
import 'package:new_map_project/data/model/source/remote/response/map/MapResponse.dart';
import 'package:retrofit/http.dart';

import '../request/user/UserRequest.dart';
import '../response/user/UserResponse.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('auth/register')
  Future<UserResponse> registerUser(@Body() UserRequest request);

  @POST('ads')
  Future<MapResponse> addLocation(@Body() MapRequest request);
}
