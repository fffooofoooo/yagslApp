import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yagsl_app/src/jsonContruction/angle.dart';
import 'package:yagsl_app/src/jsonContruction/controller_properties.dart';
import 'package:yagsl_app/src/jsonContruction/conversion_factor.dart';
import 'package:yagsl_app/src/jsonContruction/current_limit.dart';
import 'package:yagsl_app/src/jsonContruction/drive.dart';
import 'package:yagsl_app/src/jsonContruction/imu.dart';
import 'package:yagsl_app/src/jsonContruction/inverted.dart';
import 'package:yagsl_app/src/jsonContruction/location.dart';
import 'package:yagsl_app/src/jsonContruction/module.dart';
import 'package:yagsl_app/src/jsonContruction/module_encoder.dart';
import 'package:yagsl_app/src/jsonContruction/module_properties.dart';
import 'package:yagsl_app/src/jsonContruction/ramp_rate.dart';
import 'package:yagsl_app/src/jsonContruction/swerve_drive.dart';
import 'package:yagsl_app/src/settings/settings_controller.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  SampleItemDetailsView({super.key, required this.controller});

  final SettingsController controller;
  /// final ModuleProperties swerveModule1 = ModuleProperties(12, 1.19, CurrentLimit(40, 20), ConversionFactor(0, 0), RampRate(0.25, 0.25));
  /// final SwerveDrive swerveModule1 = SwerveDrive(Imu("adxrs450", 0, null), false);
  final Module swerveModule1 = Module(Location(0.15, 0.15), 0, Drive("sparkflex", 0, null), Angle("sparkflex", 0, null), ModuleEncoder("sparkflex", 0, null), Inverted(false, false), false);
  final ControllerProperties controllerProperties = ControllerProperties(0.5, {"p": 0.4, "i": 0.0, "d": 0.01});
  final JsonEncoder encoder = const JsonEncoder.withIndent('  ');
  late final String moduleJson = encoder.convert(swerveModule1);

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Item Details'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('More Information Here ${controllerProperties.heading["p"]}'
                  '\n$moduleJson'),
              TextButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: moduleJson));
                  },
                  child: const Text('Copy Json')),
            ],
          ),
        ));
  }
}
