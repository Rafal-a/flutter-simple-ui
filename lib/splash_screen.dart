import 'package:flutter/material.dart';
import 'package:flutter_simple_ui/login_page.dart';
import 'package:flutter_simple_ui/widgets/logo_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

    @override
  State<SplashScreen> createState() => _SplashScreenState();
  }


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
      ()=>Navigator.push(context,MaterialPageRoute(builder:   (context) => LoginPage())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [SizedBox(height: 120), LogoText(),
              SizedBox(height: 100),
              SvgPicture.asset(width:200 ,
              height: 200,
              'assets/images/undraw_shopping_a55o.svg'),
              SizedBox(height: 20),
                      Text('LOREM IPSUM',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,),
                      ),
                      SizedBox(height: 10),
                       Text('Lorem Ipsum is a dummy text used as placeholder',
                       textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.grey.shade400),
                      ),
                      ],
            ),
          ),
        ),
        Positioned(
          top: -50,
          left: 45,
          child: SvgPicture.asset('assets/images/stick.svg'),
        ),
        Positioned(
          left: 18,
          bottom: 480,
          child: SvgPicture.asset('assets/images/lamp.svg'),
        ),
         Positioned(
          top: -100,
          left: 75,
          child: SvgPicture.asset('assets/images/stick.svg'),
        ),
        Positioned(
          left: 48,
          bottom: 520,
          child: SvgPicture.asset('assets/images/lamp.svg'),
        ),
        
      ],
    );
  }
  
}
