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
          Image.asset(
              "${l1[i]}",
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Random rnd = Random();
              int z=rnd.nextInt(6);
             setState(() {
                 i=z;
               }
             );
            }, child: Text("Roll")),
          ],
        ),
      ),
    );
  }
}
