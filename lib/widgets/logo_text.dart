import 'package:flutter/material.dart';
import 'package:flutter_simple_ui/app_color.dart';

class LogoText extends StatelessWidget{
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [AppColor.primaryColor, AppColor.secondaryColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: Text(
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w500,
                fontFamily: 'Prime',
                color: Colors.white,
              ),
              'LOGO',
            ),
            );
            
    
  }
}