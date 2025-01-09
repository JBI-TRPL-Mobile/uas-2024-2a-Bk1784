import 'package:flutter/material.dart';

class HomeScreen  extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        centerTitle: true,
        title: Text("UAS", style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 150,
              color: Colors.grey,
              child: Icon(Icons.image),
            )
          ],
        ),
      ),
    );
  }
}
