import 'package:flutter/material.dart';
import 'package:glitch_aim_web/view/homepage.dart';
import 'package:sizer/sizer.dart';
void main(){
  
  runApp(
    Sizer(
    builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    );
    }
  ));
}