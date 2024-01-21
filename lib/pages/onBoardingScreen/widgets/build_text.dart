import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {
  const BuildText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Welcome to USAM",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
            ),
          ),
          SizedBox(height: 10,),
          RichText(
            textAlign: TextAlign.center,
              text:
          const TextSpan(
            children: [
              TextSpan(
                  text: 'Lorem ipsum dolor sit amet, consecrate radicalising',
                   style: TextStyle(color: Colors.grey,fontSize: 18)
              ),
              TextSpan(
                  text: 'elit. Cras netus mauris pulvinar suspendisse. Et sit',
                  style: TextStyle(color: Colors.grey,fontSize: 18)

              ),
            ],
          ))
        ],
      ),
    );
  }
}
