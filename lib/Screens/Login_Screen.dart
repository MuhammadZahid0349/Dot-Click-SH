import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/Screens/Sign_Up_Screen.dart';
import 'package:new_app/Widgets/ColorConstants.dart';
import 'package:new_app/Widgets/customized_textfield.dart';
import 'package:new_app/Widgets/customized_textformfield.dart';
import 'package:new_app/Widgets/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              54.h.heightBox,
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
                  "Login to your Account",
                  style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
              24.h.heightBox,
              _accountButtons(googlebtnColor, FontAwesomeIcons.google),
              10.h.heightBox,
              _accountButtons(facebookbtnColor, FontAwesomeIcons.facebookF),
              10.h.heightBox,
              _accountButtons(ApplebtnColor, FontAwesomeIcons.apple),
              40.h.heightBox,
              const Divider(
                color: Colors.grey,
              ),
              32.h.heightBox,
              Text(
                "Email Address",
                style: GoogleFonts.rubik(
                  color: Colors.black,
                  fontSize: 17.sp,
                ),
              ),
              8.h.heightBox,
              CustomizedTextfield(
                hintText: "youremail@yourdomain",
                myController: emailcontroller,
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
              CustomizedTextFormfield(
                myController: passwordcontroller,
                hintText: "Password ( min 6 Character )",
                isPassword: true,
              ),
              4.h.heightBox,
              Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot Password?",
                    style: GoogleFonts.rubik(
                      color: Color(0xff737373),
                      fontSize: 15.sp,
                    )),
              ),
              45.h.h.heightBox,
              Container(
                height: 44.h,
                width: Get.width,
                child: CustomizedColorBtn(
                    hint: "Login with Email", onTap: () {}, isborder: true),
              ),
              24.h.heightBox,
              Center(
                  child: Text("or", style: GoogleFonts.rubik(fontSize: 17.sp))),
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
              74.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }

  Container _accountButtons(Color? color, IconData? iconName) {
    return Container(
      height: 46.h,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconName,
            color: Colors.white,
            size: 18.sp,
          ),
          30.w.widthBox,
          Text(
            "Login with Google",
            style: GoogleFonts.rubik(
                color: Colors.white,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
