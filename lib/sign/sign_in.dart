import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  'masukkan username dan password', style: TextStyle(fontSize: 14, color: Colors.grey ),
                ),
                const SizedBox(height: 30,),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "masukkan email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 30,),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "masukkan password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){}, child: const Text(
                    "Forget Password?",
                    style: TextStyle(color: Colors.blue),
                  )),
                ),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)
                      ),
                      minimumSize: Size(200, 48)
                    ),
                    onPressed: (){}, 
                    child: Text("Sign In")),
                )
              ],
            ),
          ),
          ),
        
      ),
    );
  }
}
