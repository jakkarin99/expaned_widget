import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'icon_and_name.dart';

void main() {
  runApp(const ExpandedExample());
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      tools: const [
        DeviceSection(),
      ],
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        title: 'Responsive and adaptive UI in Flutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Expanded'),
          ),
          body: Column(
            children: const [
              IconAndName(iconData: Icons.web, iconName: 'web'),
              IconAndName(iconData: Icons.house, iconName: 'house'),
              IconAndName(iconData: Icons.dashboard, iconName: 'dashboard'),
            ],
          ),
        ),
      ),
    );
  }
}
