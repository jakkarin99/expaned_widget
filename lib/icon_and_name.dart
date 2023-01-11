import 'package:flutter/material.dart';

class IconAndName extends StatelessWidget {
  final IconData iconData;
  final String iconName;

  const IconAndName({Key? key, required this.iconData, required this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Icon(
            iconData,
            size: 80.0,
          ),
        ),
        Text(iconName),
      ],
    );
  }
}
