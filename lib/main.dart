import 'package:discord_logger/discord_logger.dart';
import 'package:flutter/material.dart';
import 'package:glitch_aim_web/view/homepage.dart';
import 'package:sizer/sizer.dart';
void main(){ 
  DiscordLogger(
      channelId: "739523619905863702",
      botToken:
          "MTE1NjEyOTc2Mzk2MjkyMTAzMA.GLvdUD._HVVUOlCLYGiNMkJ7wCZhOYbGE7rvS_6cFK-cM",
    );
  
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