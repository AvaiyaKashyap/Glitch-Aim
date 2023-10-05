import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glass_kit/glass_kit.dart';

import 'package:discord_logger/discord_logger.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  bool isButtonEnabled = false;
  List<bool> _checkedStates = [];
  void updateButtonState() {
    setState(() {
      isButtonEnabled = _checkedStates.any((state) => state);
    });
  }

   bool _isPressed = false;

  void _toggleColor() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  
Future<void> logToDiscord(String message) async {
  final webhookUrl = 'https://discord.com/api/webhooks/1030816583439888414/2RhDsj71u_oVihDVPb8IWlmkF6WgDxSfvTPKCBrV1ajCvV0AagPIP87aDNyv6ADH8rWe';
  //https://discord.com/api/webhooks/1159459976067166208/fy2bu2VdTn5na66lALUT1dbD6__4E0vUFjm0flGkiwxahGFY8hfPS1eYZYOhREW81ZwC
  //https://discord.com/api/webhooks/1159432304586936400/Ikirf2WorlQ5XELm33GDU2hNjZziKjuTw2SJePJbYbaBzOr9W5n2GHB_pQR_n-605UEL

  final response = await http.post(
    Uri.parse(webhookUrl),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonEncode({
      'content': message,
    }),
  );

  if (response.statusCode == 204) {
    print('Message sent to Discord successfully');
  } else {
    print('Failed to send message to Discord. Status code: ${response.statusCode}');
  }
}

  TextEditingController dcIDController = TextEditingController();
   TextEditingController steamIDController = TextEditingController();
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        // height: 10.h,
        decoration: const BoxDecoration(
          // color: Colors.black,
          image: DecorationImage(
            //image: AssetImage("assets/glitchaim_back.jpg"),
            image: NetworkImage("https://media.tenor.com/RUzFLGMuFt0AAAAd/monkey-driving-in-los-santos-los-santos.gif"),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              //borderColor: Colors.white,
              height: 10.h,
              // decoration:  BoxDecoration(
              //   border: Border(bottom: BorderSide(color: Colors.white,)),
              // ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Icon(Icons.menu_rounded,color: Colors.white,size: 6.sp,),
                    Text("Glitch Aim",
                        style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 5.sp,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .8,
                        ))),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Server Status: ",
                            style: GoogleFonts.inder(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 2.sp,
                              fontWeight: FontWeight.bold,
                              letterSpacing: .8,
                            ))),
                        Text("Online",
                            style: GoogleFonts.inder(
                                textStyle: TextStyle(
                              color: Colors.green,
                              fontSize: 2.sp,
                              fontWeight: FontWeight.bold,
                              letterSpacing: .8,
                            ))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: GlassContainer.frostedGlass(
                  borderColor: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  height: 40.h,
                  width: 30.w,
                  alignment: Alignment.center,
                  borderWidth: 1.5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "Apply Here",
                          style: GoogleFonts.inder(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 4.sp,
                              // fontWeight: FontWeight.bold,
                              letterSpacing: .8,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            Text(
                              " Discord ID here (Ex: TGB#1058)",
                              style: GoogleFonts.inder(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 2.sp,
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: .8,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffF9F9F9).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(14)),
                          child: TextFormField(
                             controller: dcIDController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              label: Text(
                                "Discord ID",
                                style: TextStyle(
                                  // fontFamily: 'Avenir',
                                  fontSize: 14,
                                  color:
                                      const Color(0xff303030).withOpacity(0.4),
                                ),
                              ),
                              prefixIcon: const Icon(
                                Icons.discord,
                                //  color: Color(0xffF26835),
                                //color: Colors.purple,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            Text(
                              " Steam hex ID here (Ex: steam:1100045fed)",
                              style: GoogleFonts.inder(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 2.sp,
                                  // fontWeight: FontWeight.bold,
                                  letterSpacing: .8,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffF9F9F9).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(14)),
                          child: TextFormField(
                             controller: steamIDController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              label: Text(
                                "Steam hex ID",
                                style: TextStyle(
                                  // fontFamily: 'Avenir',
                                  fontSize: 14,
                                  color:
                                      const Color(0xff303030).withOpacity(0.4),
                                ),
                              ),
                              prefixIcon: const Icon(
                                Icons.gamepad,
                                //  color: Color(0xffF26835),
                                //color: Colors.purple,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _toggleColor();
                                  },
                                  child: Container(
                                    height: 12,
                                    width: 12,
                                    decoration: BoxDecoration(
                                        color:  _isPressed ? Color(0xffBDE038) : Colors.white,
                                        borderRadius: BorderRadius.circular(100)),
                                  ),
                                ),
                                Text(
                                  " I Accept the Rules & Regulation of Server",
                                  style: GoogleFonts.inder(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 2.sp,
                                      // fontWeight: FontWeight.bold,
                                      letterSpacing: .8,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                if(_isPressed == true) 
                                {
                                  print("true");
                                 logToDiscord('<@${dcIDController.text.toString()}> ${steamIDController.text.toString()}');

                                }
                              },
                              child: Container(
                                height: 5.h,
                                width: 7.w,
                                decoration: BoxDecoration(
                                  color:  _isPressed ? Color.fromARGB(255, 214, 39, 39) : Colors.white ,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Submit",
                                  style: GoogleFonts.inder(
                                    textStyle: TextStyle(
                                      color:  _isPressed ? Colors.white : Colors.black,
                                      fontSize: 3.sp,
                                      // fontWeight: FontWeight.bold,
                                      letterSpacing: .8,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //color: Colors.white.withOpacity(0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
