import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignIn extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                const Text(
                  "Sign in",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'masukkan username dan password',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "masukkan email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      labelText: "masukkan password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        //validasi login
                        final email = emailController.text;
                        final password = passwordController.text;
                        if (email == 'bagus123@gmail.com' &&
                            password == 'pass123') {
                          //memindahkan ke halaman profile
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProfilePage(email: email)),
                          );
                        } else {
                          //pesan kesalahan
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("email atau password salah")));
                        }
                      },
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.blue),
                      )),
                ),
                SizedBox(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          minimumSize: Size(200, 48)),
                      onPressed: () {},
                      child: Text("Sign In")),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text("or sign in with"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          '../assets/google.png',
                          width: 40.0,
                          height: 40.0,
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          '../assets/facebook.png',
                          width: 40.0,
                          height: 40.0,
                        )),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Sign Up Now",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
