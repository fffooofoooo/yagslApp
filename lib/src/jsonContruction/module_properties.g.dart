// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModuleProperties _$ModulePropertiesFromJson(Map<String, dynamic> json) =>
    ModuleProperties(
      (json['optimalVoltage'] as num).toInt(),
      (json['wheelGripCoefficientOfFriction'] as num).toDouble(),
      CurrentLimit.fromJson(json['currentLimit'] as Map<String, dynamic>),
      ConversionFactor.fromJson(
          json['conversionFactor'] as Map<String, dynamic>),
      RampRate.fromJson(json['rampRate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModulePropertiesToJson(ModuleProperties instance) =>
    <String, dynamic>{
      'optimalVoltage': instance.optimalVoltage,
      'wheelGripCoefficientOfFriction': instance.wheelGripCoefficientOfFriction,
      'currentLimit': instance.currentLimit.toJson(),
      'conversionFactor': instance.conversionFactor.toJson(),
      'rampRate': instance.rampRate.toJson(),
    };
