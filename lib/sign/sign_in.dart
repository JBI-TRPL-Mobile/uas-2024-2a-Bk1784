import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'masukkan username dan password', style: TextStyle(fontSize: 14, color: Colors.grey ),
                ),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "masukkan email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "masukkan password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder()
                  ),
                )
              ],
            ),
          ),
          ),
        
      ),
    );
  }
}
