import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glass_kit/glass_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 10.h,
        decoration: const BoxDecoration(
          // color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/glitchaim_back.jpg"),
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
                            // controller: emailController,
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
                            // controller: emailController,
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
                                Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)),
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
                            Container(
                              height: 5.h,
                              width: 7.w,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 214, 39, 39),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Submit",
                                style: GoogleFonts.inder(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 3.sp,
                                    // fontWeight: FontWeight.bold,
                                    letterSpacing: .8,
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
