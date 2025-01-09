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
              child: Icon(Icons.image, color: Colors.white,),
            ),
            const SizedBox(height: 20,),
            const Text(
              "Welcome To Jurrasic Park",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "welcome to jurrasic park in here many information about dinosaurs",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)
                      )
                    ),
                    onPressed: (){}, child: Text("Sign In")
                    ),
                  ),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 100,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                        )
                      ),
                      onPressed: (){}, child: Text('Sign Up')
                      ),
                  ),
              ],
            )
          
          ],
        ),
      ),
    );
  }
}
