import 'package:flutter/material.dart';
import 'package:weather_app/ui_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: MainColors.shadeblueColor,
      body: Column(
        children: [
          UIHead(),
          BodyArea()
        ],
      )
    ));
  }
}

Widget UIHead() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white30),
              borderRadius: BorderRadius.circular(29),
              //color: MainColors.shadeblueColor,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/icon.png',
                ),
                fit: BoxFit.fill,
              )),
        ),
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.white70,
            ),
            Text(
              'Minsk',
              style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
          ],
        ),
        Icon(
          Icons.more_vert,
          color: Colors.white70,
        )
      ],
    ),
  );
}

Widget BodyArea(){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 25,),
        child: Container(height: 20,width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white38,width: 1),
          color: MainColors.shadeblueColor,
        ),
          child: Center(child: Text('Updating',style: TextStyle(
              fontSize: 10,color: Colors.white70),)),
        ),
      ),
      SizedBox(height: 12,),
      Container(
        height: 200,
        width: 200,
        child: Image.asset('assets/images/pic1.png'),
      ),
      Column(
        children: [
          Text(
            '21',style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 110,color: Colors.white
          ),),
          Text(
            'Thunderstorm',style: TextStyle(fontWeight: FontWeight.w500,
          fontSize: 25,color: Colors.white
          ),),
          Text('Monday, 17May',style: TextStyle(color: Colors.white70),)
        ],
      )
    ],
  );
}
