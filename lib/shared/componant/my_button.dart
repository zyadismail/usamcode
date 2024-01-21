import 'package:flutter/material.dart';
import 'package:splashscreen/shared/color/color.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? function;
  const MyButton({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.mainGreen,
          borderRadius: BorderRadius.circular(8),
        ),
        padding:const EdgeInsets.all(25),
        margin:const EdgeInsets.symmetric(horizontal: 25),
        child:  Center(
          child: Text(text,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
