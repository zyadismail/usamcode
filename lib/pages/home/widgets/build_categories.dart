import 'package:flutter/material.dart';
import 'package:splashscreen/shared/color/color.dart';
class BuildCatergoties extends StatelessWidget {
  const BuildCatergoties({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.all(18.0),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         const Text("All",style: TextStyle(color: Colors.grey,fontSize: 20),),
          Container(
            alignment: Alignment.center,
            height: 45,
            width: 90,
            decoration:  BoxDecoration(
              color: ColorsManager.mainGreen,
              borderRadius: BorderRadius.circular(18),

            ),
              child: const Text("Design",style: TextStyle(color: Colors.white,fontSize: 20),)),
          const Text("Programming",style: TextStyle(color: Colors.grey,fontSize: 20),),
          const Text("UI/UX",style: TextStyle(color: Colors.grey,fontSize: 20),),

        ],
      ),
    );
  }
}
