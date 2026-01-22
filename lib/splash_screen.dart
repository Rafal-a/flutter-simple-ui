import 'package:flutter/material.dart';
import 'package:flutter_simple_ui/widgets/logo_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 120),
            LogoText(),
          ],
        ),
      ),
    );
  }
}
