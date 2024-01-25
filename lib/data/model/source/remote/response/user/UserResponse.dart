import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserResponse.freezed.dart';
part 'UserResponse.g.dart';

@freezed
class UserResponse with _$UserResponse {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)

  const factory UserResponse(
      String? message,
      String? accessToken
      ) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}