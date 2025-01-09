import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQUeryHeight = MediaQuery.of(context).size.height;
    final mediaQUeryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: mediaQUeryWidth * 0.7,
              height: mediaQUeryHeight * 0.3,
              color: Colors.grey,
              child: Icon(Icons.image),
            )
          ],
        ),
      ),
    );
  }
}
