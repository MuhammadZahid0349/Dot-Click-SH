import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/Screens/Login_Screen.dart';
import 'package:new_app/Screens/Sign_Up_Screen.dart';
import 'package:new_app/Widgets/ColorConstants.dart';
import 'package:new_app/Widgets/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1e9ab1),
              Colors.white,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              56.h.heightBox,
              Text(
                "Top3 Prediction",
                style: GoogleFonts.rubik(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700),
              ),
              10.h.heightBox,
              // 258.h.heightBox,
              // Text(
              //   "Predict the Champion and Runner-up of World Cup 2022 and Win The Prize",
              //   softWrap: true,
              //   style: GoogleFonts.rubik(
              //       color: Colors.black,
              //       fontSize: 28.sp,
              //       fontWeight: FontWeight.w600),
              // ),
              Image.asset(
                "assets/f.png",
                width: Get.width,
              ),
              25.h.heightBox,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Container(
                  height: 44.h,
                  width: Get.width,
                  child: CustomizedColorBtn(
                      isborder: false,
                      hint: "Login",
                      onTap: () {
                        Get.to(() => LoginScreen());
                      }),
                ),
              ),
              24.h.heightBox,
              Text("or", style: GoogleFonts.rubik(fontSize: 17.sp)),
              24.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't have an account? ",
                      softWrap: true,
                      style: GoogleFonts.rubik(fontSize: 17.sp)),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SignUpScreen());
                    },
                    child: Text("Sign Up",
                        softWrap: true,
                        style: GoogleFonts.rubik(
                            fontSize: 17.sp, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
