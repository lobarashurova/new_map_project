// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MapResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapResponseImpl _$$MapResponseImplFromJson(Map<String, dynamic> json) =>
    _$MapResponseImpl(
      json['title'] as String?,
      json['description'] as String?,
      (json['lat'] as num?)?.toDouble(),
      json['updated_at'] as String?,
      json['created_at'] as String?,
      json['id'] as int?,
    );

Map<String, dynamic> _$$MapResponseImplToJson(_$MapResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'lat': instance.lat,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
    };
