import 'package:flutter/material.dart';
import 'package:flutter_simple_ui/app_color.dart';
import 'package:flutter_simple_ui/login_page.dart';
import 'package:flutter_simple_ui/widgets/costum_text_filed.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class RegisterPage extends StatelessWidget{
  RegisterPage({super.key});

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
            Text(
              'Let\'s Get Started!',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Create an account on MNZL to get all features',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade400
              ),
            ),
            SizedBox(height: 20),
            CostumTextFiled(hintText: 'First Name', iconData: Ionicons.person_outline, controller: controller),
            SizedBox(height: 10),
            CostumTextFiled(hintText: 'Last Name', iconData: Ionicons.person_outline, controller: controller),
            SizedBox(height: 10),
            CostumTextFiled(hintText: 'User Name', iconData: Ionicons.person_outline, controller: controller),
            SizedBox(height: 10),
            CostumTextFiled(hintText: 'Email', iconData: Ionicons.mail_outline, controller: controller),
            SizedBox(height: 10),
            CostumTextFiled(hintText: 'Password', iconData: Ionicons.lock_closed_outline, controller: controller),
            SizedBox(height: 10),
            CostumTextFiled(hintText: 'Confirm Password', iconData: Ionicons.lock_closed_outline, controller: controller),
            SizedBox(height: 10),
            ElevatedButton(
                    onPressed: printSomething,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Login here',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                        ),
                      ),
                  ),
                  ],
                  ),
          ],
        ),
      ),
    )
    )]);
  }
  
  void printSomething() => print("Something");
  }