import 'package:flutter/material.dart';
import 'package:splashscreen/shared/color/color.dart';
class BuildContainer extends StatelessWidget {
  const BuildContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: height*0.19,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorsManager.mainGreen,
        ),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome To USAM",style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(height: 8,),
              Text(
                "usam is a platform that allows you eductors to \n "
                    "create online classes whereby they can\n store the "
                    "course materials online: manage\n assignments quizzes"
                    " and exams monitor\n due dates: grade results and provide\n students"
                    "with feedback all in one place",
                style: TextStyle(color: Colors.white54,fontSize: 12),),
            ],
          ),
        ),
      ),
    );
  }
}
