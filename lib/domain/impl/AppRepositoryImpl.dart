import 'package:new_map_project/data/model/source/remote/api/api_service.dart';
import 'package:new_map_project/data/model/source/remote/request/map/map_reuqest.dart';
import 'package:new_map_project/data/model/source/remote/response/map/MapResponse.dart';
import 'package:new_map_project/di/app_di.dart';
import 'package:new_map_project/domain/AppRepository.dart';

import '../../data/model/source/remote/request/user/UserRequest.dart';
import '../../data/model/source/remote/response/user/UserResponse.dart';

class AppRepositoryImpl extends AppRepository {
  final _api = getIt<ApiClient>();

  @override
  Future<UserResponse> registerUser(UserRequest request) async {
    final response = await _api.registerUser(request);
    return response;
  }

  @override
  Future<MapResponse> addLocation(MapRequest request) async {
    final response = await _api.addLocation(request);
    return response;
  }
}
