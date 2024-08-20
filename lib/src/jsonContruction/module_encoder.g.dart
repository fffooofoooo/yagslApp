// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_encoder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModuleEncoder _$ModuleEncoderFromJson(Map<String, dynamic> json) =>
    ModuleEncoder(
      json['type'] as String,
      (json['id'] as num).toInt(),
      json['canbus'] as String?,
    );

Map<String, dynamic> _$ModuleEncoderToJson(ModuleEncoder instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'canbus': instance.canbus,
    };
