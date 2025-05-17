import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yagsl_app/src/jsonContruction/angle.dart';
import 'package:yagsl_app/src/jsonContruction/controller_properties.dart';
import 'package:yagsl_app/src/jsonContruction/drive.dart';
import 'package:yagsl_app/src/jsonContruction/inverted.dart';
import 'package:yagsl_app/src/jsonContruction/location.dart';
import 'package:yagsl_app/src/jsonContruction/module.dart';
import 'package:yagsl_app/src/jsonContruction/module_encoder.dart';
import 'package:yagsl_app/src/settings/settings_controller.dart';
import 'package:nt4/nt4.dart';

/// Displays detailed information about a SampleItem.
// ignore: must_be_immutable
class SampleItemDetailsView2 extends StatelessWidget {
  SettingsController controller;
  SampleItemDetailsView2({super.key, required this.controller});

  static const routeName = '/sample_item2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SampleApp(controller: controller),
    );
  }
} 

class SampleApp extends StatefulWidget {
  SettingsController controller;
  late TextEditingController pathController;
  late NT4Client client;
  late NT4Topic examplePub;

  SampleApp({super.key, required this.controller}) {
    initState();
  }

  initState() async {
  pathController = TextEditingController();
  pathController.text = "c";
  client = NT4Client(
  serverBaseAddress: '127.0.0.1',
  onConnect: () {
    pathController.text = "a";
  },
  onDisconnect: () {
  },
  );
  examplePub = client.publishNewTopic('yagsl/gyro/enabled', NT4TypeStr.typeBool);
  }

  @override
  _SampleAppState createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {

  late final SettingsController controller = widget.controller;
  final TextEditingController listController = TextEditingController();
  /// final ModuleProperties swerveModule1 = ModuleProperties(12, 1.19, CurrentLimit(40, 20), ConversionFactor(0, 0), RampRate(0.25, 0.25));
  /// final SwerveDrive swerveModule1 = SwerveDrive(Imu("adxrs450", 0, null), false);
  final Module swerveModule1 = Module(Location(0.15, 0.15), 0, Drive("sparkflex", 0, null), Angle("sparkflex", 0, null, "angle"), ModuleEncoder("sparkflex", 0, null), Inverted(false, false), false);
  final ControllerProperties controllerProperties = ControllerProperties(0.5, {"p": 0.4, "i": 0.0, "d": 0.01});
  final JsonEncoder encoder = const JsonEncoder.withIndent('  ');
  final JsonDecoder decoder = const JsonDecoder();
  late final String moduleJson = encoder.convert(swerveModule1);
  late List items;
  String lists = "";
  late Angle test;
  textPath() async {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Item Details'),
          leading: BackButton(onPressed: () {
            Navigator.pop(context, false);
          },)
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SingleChildScrollView(
              //   scrollDirection: Axis.vertical,
              //   child: SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Text(lists)
              //   ),
              // ),
              // FittedBox(
              //   fit: BoxFit.contain,
              //   child: Text(
              //     lists
              //     ),
              //   ),
              // Text(textScaler: const TextScaler.linear(0.5), softWrap: true, overflow: TextOverflow.clip, maxLines: 10, lists),
              // Text('More Information Here ${controllerProperties.heading["p"]}'
              //     '\n$moduleJson'),
              // TextButton(
              //     onPressed: () {
              //       Clipboard.setData(ClipboardData(text: moduleJson));
              //     },
              //     child: const Text('Copy Json')),
              Text(lists),
              TextField(
                controller: widget.pathController,
                decoration: InputDecoration(labelText: widget.pathController.text),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {});
                  },
              ),
              TextButton(
                  onPressed: () {
                    // changePath();
                    // Clipboard.setData(ClipboardData(text: lists));
                    // widget.client.addSampleFromName("yagsl/gyro/enabled", true);
                    widget.client.addSample(widget.examplePub, false);
                    setState(() {});
                  },
                  child: const Text('Connect to SSH \\')),
            ],
          ),
        ));
  }
}
