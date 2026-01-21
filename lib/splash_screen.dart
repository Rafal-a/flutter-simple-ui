import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 140),
          Text(style: TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.w500,
            fontFamily: 'Prime'
          ),
          'LOGO')
        ],
      ),
    )
    );
  }
}