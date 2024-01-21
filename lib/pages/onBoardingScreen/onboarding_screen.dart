import 'package:flutter/material.dart';
import 'package:splashscreen/pages/onBoardingScreen/widgets/build_container.dart';
import 'package:splashscreen/pages/onBoardingScreen/widgets/build_text.dart';
import 'package:splashscreen/pages/sigup/sigup_screen.dart';
import 'package:splashscreen/shared/color/color.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          const BuildContainer(),
          const BuildText(),
          SizedBox(
            height: height * 0.07,
          ),
          SizedBox(
            height: 60,
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => RegisterScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsManager.mainGreen,
              ),
              child:const Text("Next"),
            ),
          ),
        ],
      ),
    );
  }
}
