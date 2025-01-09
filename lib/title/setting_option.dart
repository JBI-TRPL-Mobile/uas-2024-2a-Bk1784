import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  final String title;
  const SettingOption({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
      onTap: () {},
    );
  }
}
