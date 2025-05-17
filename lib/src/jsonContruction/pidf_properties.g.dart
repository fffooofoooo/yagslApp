// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pidf_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PIDFProperties _$PIDFPropertiesFromJson(Map<String, dynamic> json) =>
    PIDFProperties(
      DriveTuning.fromJson(json['drive'] as Map<String, dynamic>),
      AngleTuning.fromJson(json['angle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PIDFPropertiesToJson(PIDFProperties instance) =>
    <String, dynamic>{
      'drive': instance.drive.toJson(),
      'angle': instance.angle.toJson(),
    };
