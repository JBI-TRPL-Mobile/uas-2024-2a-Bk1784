import 'package:flutter/material.dart';
import 'package:template_project/all_page/messages_page.dart';
import 'package:template_project/all_page/profile_page.dart';
import 'package:template_project/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessagesPage(),
    );
  }
}

