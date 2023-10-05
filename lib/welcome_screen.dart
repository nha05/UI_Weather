import 'package:flutter/material.dart';
import 'package:ui_2/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
              color: Colors.grey,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/get-started.png'),
                    const SizedBox(height: 40,),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          foregroundColor: Colors.white,
                          fixedSize: Size(MediaQuery.of(context).size.width*0.7, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(fontSize: 20,
                              color: Colors.white),

                        )
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
