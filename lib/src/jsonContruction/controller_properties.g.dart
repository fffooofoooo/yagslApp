// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ControllerProperties _$ControllerPropertiesFromJson(
        Map<String, dynamic> json) =>
    ControllerProperties(
      (json['angleJoystickRadiusDeadband'] as num).toDouble(),
      (json['heading'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$ControllerPropertiesToJson(
        ControllerProperties instance) =>
    <String, dynamic>{
      'angleJoystickRadiusDeadband': instance.angleJoystickRadiusDeadband,
      'heading': instance.heading,
    };
