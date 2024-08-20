// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Drive _$DriveFromJson(Map<String, dynamic> json) => Drive(
      json['type'] as String,
      (json['id'] as num).toInt(),
      json['canbus'] as String?,
    );

Map<String, dynamic> _$DriveToJson(Drive instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'canbus': instance.canbus,
    };
