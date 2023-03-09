import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/Widgets/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

CustomizedColorBtn(
    {required String hint, required VoidCallback onTap, bool? isborder}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isborder! ? Colors.white : btnColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
            side: BorderSide(
              width: 1.w,
              color: isborder ? Colors.black : btnColor,
            )),
      ),
      onPressed: onTap,
      child: Text(hint,
          style: GoogleFonts.rubik(
              color: isborder ? Colors.black : Colors.white,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500)));
}

Drawer CustomizedDrawer() {
  return Drawer(
    width: Get.width,
    child: ListView(
      children: [
        DrawerHeader(
          child: Container(
            height: 145.h,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset("assets/p.png"),
                ),
                10.w.widthBox,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Wade Warren",
                          style: GoogleFonts.rubik(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        15.w.widthBox,
                        Image.asset("assets/e.png")
                      ],
                    ),
                    Text(
                      "warren.wade@warren.com",
                      style: GoogleFonts.rubik(
                        color: Color(0xffADB0BA),
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        // const DrawerHeader(
        //   child: Center(
        //     child: ListTile(
        //       leading: CircleAvatar(
        //         backgroundImage: AssetImage("assets/p.png"),
        //       ),
        //     ),
        //   ),
        // ),

        listNavigator(text: "Home", imageName: "assets/h.png"),
        listNavigator(text: "All User Prediction", imageName: "assets/i.png"),
        listNavigator(
            text: "Champion Prediction Statistic", imageName: "assets/c.png"),
        listNavigator(
            text: "My Prediction History", imageName: "assets/fl.png"),
        listNavigator(text: "Referral", imageName: "assets/r.png"),
        listNavigator(text: "Profile", imageName: "assets/pf.png"),
        50.h.heightBox,
        ListTile(
          minLeadingWidth: 8.w,
          leading: Container(height: 27.h, child: Image.asset("assets/lo.png")),
          title: Text(
            "Log out",
            style: GoogleFonts.rubik(
              color: Color(0xffCC3E52),
              fontSize: 17.sp,
            ),
          ),
          onTap: () {
            Get.back();
          },
        )
      ],
    ),
  );
}

ListTile listNavigator({required String imageName, required String text}) {
  return ListTile(
    minLeadingWidth: 8.w,
    leading: Container(height: 27.h, child: Image.asset(imageName)),
    title: Text(
      text,
      style: GoogleFonts.rubik(
        color: Colors.black,
        fontSize: 17.sp,
      ),
    ),
    onTap: () {
      Get.back();
    },
  );
}
