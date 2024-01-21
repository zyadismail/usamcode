import 'package:flutter/material.dart';
class BuildRow extends StatelessWidget {
  const BuildRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: [
          Text(
            "Courses",
            style:
            TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Spacer(),
          Text("View All",style: TextStyle(color: Colors.grey,fontSize: 20),)
        ],
      ),
    );
  }
}
