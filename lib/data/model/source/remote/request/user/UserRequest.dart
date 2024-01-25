import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserRequest.freezed.dart';

part 'UserRequest.g.dart';

@freezed
class UserRequest with _$UserRequest {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory UserRequest(
      String? firstname,
      String? lastname,
      String? phone,
      String? password) = _UserRequest;

  factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);
}
