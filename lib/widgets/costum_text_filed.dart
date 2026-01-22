import 'package:flutter/material.dart';

class CostumTextFiled extends StatelessWidget {
   const CostumTextFiled({super.key, required this.hintText, required this.iconData, required this.controller});

    final TextEditingController controller;
    final String hintText;
    final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: hintText,
                      prefixIcon:  Icon(iconData),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        
                        ),
                      ),
                    ),
                  );
  }
}