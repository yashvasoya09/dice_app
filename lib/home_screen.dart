import 'dart:math';

import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List l1 = [
    "assets/images/dice.png",
    "assets/images/dice (1).png",
    "assets/images/dice (2).png",
    "assets/images/dice (3).png",
    "assets/images/dice (4).png",
    "assets/images/dice (5).png",
  ];
  int i = 0;
  int j=0;
  int t=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text("Dice App",style: TextStyle(
          color: Colors.black54,
        ),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total=$t",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 50,
              letterSpacing: 3,
            )),
          SizedBox(height: 80,),
          Image.asset(
              "${l1[i]}",
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Random rnd = Random();
              int z=rnd.nextInt(6);
              Random rnd1 = Random();
              int y=rnd1.nextInt(6);
             setState(() {
                 i=z;
                 j=y;
                 t=i+1+j+1;
               }
             );
            }, child: Text("Roll")),
            SizedBox(height: 15,),
            Image.asset(
              "${l1[j]}",
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
