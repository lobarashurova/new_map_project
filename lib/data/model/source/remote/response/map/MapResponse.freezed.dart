// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'MapResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapResponse _$MapResponseFromJson(Map<String, dynamic> json) {
  return _MapResponse.fromJson(json);
}

/// @nodoc
mixin _$MapResponse {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapResponseCopyWith<MapResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapResponseCopyWith<$Res> {
  factory $MapResponseCopyWith(
          MapResponse value, $Res Function(MapResponse) then) =
      _$MapResponseCopyWithImpl<$Res, MapResponse>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      double? lat,
      String? updated_at,
      String? created_at,
      int? id});
}

/// @nodoc
class _$MapResponseCopyWithImpl<$Res, $Val extends MapResponse>
    implements $MapResponseCopyWith<$Res> {
  _$MapResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? lat = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapResponseImplCopyWith<$Res>
    implements $MapResponseCopyWith<$Res> {
  factory _$$MapResponseImplCopyWith(
          _$MapResponseImpl value, $Res Function(_$MapResponseImpl) then) =
      __$$MapResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      double? lat,
      String? updated_at,
      String? created_at,
      int? id});
}

/// @nodoc
class __$$MapResponseImplCopyWithImpl<$Res>
    extends _$MapResponseCopyWithImpl<$Res, _$MapResponseImpl>
    implements _$$MapResponseImplCopyWith<$Res> {
  __$$MapResponseImplCopyWithImpl(
      _$MapResponseImpl _value, $Res Function(_$MapResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? lat = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
    Object? id = freezed,
  }) {
    return _then(_$MapResponseImpl(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MapResponseImpl implements _MapResponse {
  const _$MapResponseImpl(this.title, this.description, this.lat,
      this.updated_at, this.created_at, this.id);

  factory _$MapResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapResponseImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final double? lat;
  @override
  final String? updated_at;
  @override
  final String? created_at;
  @override
  final int? id;

  @override
  String toString() {
    return 'MapResponse(title: $title, description: $description, lat: $lat, updated_at: $updated_at, created_at: $created_at, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, lat, updated_at, created_at, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapResponseImplCopyWith<_$MapResponseImpl> get copyWith =>
      __$$MapResponseImplCopyWithImpl<_$MapResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapResponseImplToJson(
      this,
    );
  }
}

abstract class _MapResponse implements MapResponse {
  const factory _MapResponse(
      final String? title,
      final String? description,
      final double? lat,
      final String? updated_at,
      final String? created_at,
      final int? id) = _$MapResponseImpl;

  factory _MapResponse.fromJson(Map<String, dynamic> json) =
      _$MapResponseImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  double? get lat;
  @override
  String? get updated_at;
  @override
  String? get created_at;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$MapResponseImplCopyWith<_$MapResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
