import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/Screens/Home_Screen.dart';
import 'package:new_app/Screens/Login_Screen.dart';
import 'package:new_app/Widgets/ColorConstants.dart';
import 'package:new_app/Widgets/customized_textfield.dart';
import 'package:new_app/Widgets/customized_textformfield.dart';
import 'package:new_app/Widgets/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              55.h.heightBox,
              Center(
                child: Text(
                  "Top3 Prediction",
                  style: GoogleFonts.rubik(
                      color: btnColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              26.h.heightBox,
              Center(
                child: Text(
                  "Create a New Account",
                  style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              32.h.heightBox,
              Text(
                "Nickname",
                style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 17.sp,
                ),
              ),
              8.h.heightBox,
              const CustomizedTextfield(
                hintText: "Your Nickname",
                // myController: emailcontroller,
              ),
              12.h.heightBox,
              Text(
                "Username",
                style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 17.sp,
                ),
              ),
              8.h.heightBox,
              const CustomizedTextfield(
                hintText: "Your Username",
                // myController: emailcontroller,
              ),
              12.h.heightBox,
              Text(
                "Email Address",
                style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 17.sp,
                ),
              ),
              8.h.heightBox,
              const CustomizedTextfield(
                hintText: "youremail@yourdomain",
                // myController: emailcontroller,
              ),
              12.h.heightBox,
              Text(
                "Password",
                style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 17.sp,
                ),
              ),
              8.h.heightBox,
              const CustomizedTextFormfield(
                // myController: passwordcontroller,
                hintText: "Password ( min 6 Character )",
                isPassword: true,
              ),
              40.h.heightBox,
              Container(
                height: 44.h,
                width: Get.width,
                child: CustomizedColorBtn(
                    hint: "Create Account",
                    onTap: () {
                      Get.to(() => HomeScreen());
                    },
                    isborder: false),
              ),
              22.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 1.5,
                      width: Get.width,
                      color: Color(0xffE6E6E6),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 11.h),
                    child: Text(
                      "or Sign Up with",
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1.5,
                      width: Get.width,
                      color: Color(0xffE6E6E6),
                    ),
                  ),
                ],
              ),
              24.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _accountBtn(
                      color: googlebtnColor, iconName: FontAwesomeIcons.google),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: _accountBtn(
                        color: facebookbtnColor,
                        iconName: FontAwesomeIcons.facebookF),
                  ),
                  _accountBtn(
                      color: ApplebtnColor, iconName: FontAwesomeIcons.apple)
                ],
              ),
              36.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?",
                      softWrap: true,
                      style: GoogleFonts.rubik(fontSize: 17.sp)),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => LoginScreen());
                    },
                    child: Text(" Log In",
                        softWrap: true,
                        style: GoogleFonts.rubik(
                            fontSize: 17.sp, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              74.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }

  Container _accountBtn({required Color color, IconData? iconName}) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Icon(
        iconName,
        color: Colors.white,
      ),
    );
  }
}
