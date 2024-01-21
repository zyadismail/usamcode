import 'package:flutter/material.dart';
import 'package:splashscreen/shared/color/color.dart';
class BuildContainer extends StatelessWidget {
  const BuildContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom:20),
      child: Container(
         height:height*0.6,
          decoration: BoxDecoration(
            color: ColorsManager.mainGreen,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(200),
                bottomLeft: Radius.circular(200)),
          ),
        child: Image.asset("assets/onboarding.jpg"),
      ),
    );
  }
}
