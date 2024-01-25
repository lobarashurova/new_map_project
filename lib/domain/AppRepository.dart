import 'package:new_map_project/data/model/source/remote/request/map/map_reuqest.dart';
import 'package:new_map_project/data/model/source/remote/response/map/MapResponse.dart';

import '../data/model/source/remote/request/user/UserRequest.dart';
import '../data/model/source/remote/response/user/UserResponse.dart';

abstract class AppRepository {
  Future<UserResponse> registerUser(UserRequest request);

  Future<MapResponse> addLocation(MapRequest request);
}
