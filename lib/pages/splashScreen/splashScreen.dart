import 'package:flutter/material.dart';
import 'package:splashscreen/pages/onBoardingScreen/onboarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const OnBoardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("assets/usam.jpg",fit: BoxFit.cover,),
        )
    );
  }
}