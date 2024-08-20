// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversion_factor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversionFactor _$ConversionFactorFromJson(Map<String, dynamic> json) =>
    ConversionFactor(
      (json['angle'] as num).toInt(),
      (json['drive'] as num).toInt(),
    );

Map<String, dynamic> _$ConversionFactorToJson(ConversionFactor instance) =>
    <String, dynamic>{
      'angle': instance.angle,
      'drive': instance.drive,
    };
