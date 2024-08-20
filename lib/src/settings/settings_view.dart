import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'settings_controller.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsView extends StatelessWidget {
  const SettingsView({super.key, required this.controller});

  static const routeName = '/settings';

  final SettingsController controller;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<ThemeMode>(
            // Read the selected themeMode from the controller
            value: controller.themeMode,
            // Call the updateThemeMode method any time the user selects a theme.
            onChanged: controller.updateThemeMode,
            items: const [
              DropdownMenuItem(
                value: ThemeMode.system,
                child: Text('System Theme'),
              ),
              DropdownMenuItem(
                value: ThemeMode.light,
                child: Text('Light Theme'),
              ),
              DropdownMenuItem(
                value: ThemeMode.dark,
                child: Text('Dark Theme'),
              )
            ],
          ),
          TextField(
            controller: controller.textController,
            decoration: const InputDecoration(labelText: "Input Team Number"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
            ],
            onChanged: (value) {
              var tNew = int.tryParse(value);
              if (tNew != null) {
              controller.updateTeamNumber(tNew);
                if (controller.curController == controller.textController) {
                  controller.curController = controller.textController2;
                  controller.textController2.text = (tNew + 1).toString();
                } else {
                  controller.curController = controller.textController;
                }
              }
              },
          ),
          TextField(
            controller: controller.curController,
            decoration: const InputDecoration(labelText: "Input Team Number"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
            ],
            onChanged: (value) {
              
              },
          ),
        ],
      ),
      ),
    );
  }
}
