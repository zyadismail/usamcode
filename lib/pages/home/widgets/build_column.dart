import 'package:flutter/material.dart';
class BuildColumn extends StatelessWidget {
  const BuildColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.green[50],

                ),
                child: Image.network("https://previews.123rf.com/images/idase/idase2211/idase221100371/194410916-camera-logo-vector-illustration-design.jpg",),
              ),
              const SizedBox(width: 30,),
              const Column(
                children: [
                  Text("Photoshop Course",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Text("5.0",style: TextStyle(color: Colors.grey),),
                      SizedBox(width: 20,),
                      Icon(Icons.lock_clock,color: Colors.black,),
                      Text("5h  15m",style: TextStyle(color: Colors.grey),),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 25,),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.green[50],

                ),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUopz_PJFXLoXaKA-PYUydvHP-gOTP5QXisw&usqp=CAU",),
              ),
              const SizedBox(width: 30,),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("3D Design",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Text("4.6",style: TextStyle(color: Colors.grey),),
                      SizedBox(width: 20,),
                      Icon(Icons.lock_clock,color: Colors.black,),
                      Text("10h  30m",style: TextStyle(color: Colors.grey),),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 25,),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.green[50],

                ),
                child: Image.network("https://previews.123rf.com/images/idase/idase2211/idase221100371/194410916-camera-logo-vector-illustration-design.jpg",),
              ),
              const SizedBox(width: 30,),
              const Column(
                children: [
                  Text("Photoshop Course",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star,color: Colors.yellow,),
                      Text("5.0",style: TextStyle(color: Colors.grey),),
                      SizedBox(width: 20,),
                      Icon(Icons.lock_clock,color: Colors.black,),
                      Text("5h  15m",style: TextStyle(color: Colors.grey),),
                    ],
                  )
                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}
