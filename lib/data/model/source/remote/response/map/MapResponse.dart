import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'MapResponse.freezed.dart';
part 'MapResponse.g.dart';

@freezed
class MapResponse with _$MapResponse {

  factory MapResponse.fromJson(Map<String, dynamic> json) =>
      _$MapResponseFromJson(json);
  @JsonSerializable(explicitToJson: true)
  const factory MapResponse(
      String? title,
      String? description,
      double? lat,
      String? updated_at,
      String? created_at,
      int? id,

      ) = _MapResponse;

}