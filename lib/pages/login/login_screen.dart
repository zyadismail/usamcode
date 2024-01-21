import 'package:flutter/material.dart';
import 'package:splashscreen/pages/home/home_screen.dart';
import 'package:splashscreen/shared/color/color.dart';

import '../../auth/auth_service.dart';
import '../../shared/componant/my_button.dart';
import '../../shared/componant/text_field.dart';
import '../sigup/sigup_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({
    super.key,
  });
  void login(BuildContext context) async {
    final authService = AuthService();
    try{
      await authService.signIn(emailController.text, passwordController.text);
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
      showDialog(context: context, builder: (context){
        return const AlertDialog(
          title: Text("Login Success"),
        );
      });
    }catch(e){
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: Text(e.toString()),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    //var width  = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "USAM",
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "Welcome back, Login now ",
                style: TextStyle(
                  color: ColorsManager.mainGreen,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              MyTextField(
                icon: Icon(
                  Icons.email,
                  color: ColorsManager.mainGreen,
                ),
                label: "email",
                labelStyle:
                TextStyle(color: ColorsManager.mainGreen, fontSize: 16),
                controller: emailController,
                obscureText: false,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              MyTextField(
                icon: Icon(
                  Icons.lock,
                  color: ColorsManager.mainGreen,
                ),
                label: "password",
                labelStyle:
                TextStyle(color: ColorsManager.mainGreen, fontSize: 16),
                controller: passwordController,
                obscureText: true,
              ),

              SizedBox(
                height: height * 0.06,
              ),
              MyButton(
                text: "Login",
                function: () => login(context),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don\'t have an account?",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>RegisterScreen()));

                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorsManager.mainGreen),
                      ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
