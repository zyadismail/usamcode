import 'package:flutter/material.dart';
import 'package:splashscreen/shared/color/color.dart';

class MyTextField extends StatelessWidget {
  final String label;
  bool obscureText;
  Widget? icon;
  TextStyle? labelStyle;
  TextEditingController controller = TextEditingController();
  MyTextField({super.key,required this.controller,required this.obscureText,  required this.label,this.icon,this.labelStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(color: ColorsManager.mainGreen),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:BorderSide(color: ColorsManager.mainGreen),
          ),
          label: Text(label),
          labelStyle: labelStyle,
        ),
      ),
    );
  }
}
