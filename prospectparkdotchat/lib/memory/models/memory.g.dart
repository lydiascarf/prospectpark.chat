// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoryImpl _$$MemoryImplFromJson(Map<String, dynamic> json) => _$MemoryImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      imageId: json['image_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      profileId: _readProfileId(json, 'profileId') as String,
      username: _readUsername(json, 'username') as String,
    );

Map<String, dynamic> _$$MemoryImplToJson(_$MemoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image_id': instance.imageId,
      'created_at': instance.createdAt.toIso8601String(),
      'profileId': instance.profileId,
      'username': instance.username,
    };
