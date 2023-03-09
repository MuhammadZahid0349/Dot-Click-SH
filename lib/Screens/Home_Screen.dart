import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/Widgets/ColorConstants.dart';
import 'package:new_app/Widgets/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: Icon(
              Icons.menu,
              size: 30.sp,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: Image.asset("assets/b.png"),
            )
          ],
          title: Text(
            "Top3 Prediction",
            style: GoogleFonts.rubik(
                color: btnColor, fontSize: 20.sp, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      drawer: CustomizedDrawer(),
      //////////////////////////////////
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              24.h.heightBox,
              Container(
                height: 254.h,
                width: Get.width,
                decoration: BoxDecoration(
                    color: blueContainer,
                    borderRadius: BorderRadius.circular(16.r)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      16.h.heightBox,
                      Text(
                        "World Cup 2022",
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      16.h.heightBox,
                      Text(
                        "Predict the Winner an Runner Up’s and Win the Prize",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 17.sp,
                        ),
                      ),
                      16.h.heightBox,
                      Container(
                        height: 56.h,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: blueMiniContainer,
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  FontAwesomeIcons.award,
                                  color: Colors.white,
                                  size: 12.sp,
                                ),
                                2.w.widthBox,
                                Text(
                                  "Current Prize",
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.rubik(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            5.h.heightBox,
                            Text(
                              "\$12,350",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.rubik(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      12.h.heightBox,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Predictions Left",
                          softWrap: true,
                          style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 42.h),
                            child: Container(
                              height: 32.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffE6E6FF),
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: Text(
                                "5",
                                style: GoogleFonts.rubik(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          ),
                          Container(
                            height: 44.h,
                            width: 167.w,
                            child: CustomizedColorBtn(
                                hint: "Predict Now",
                                onTap: () {},
                                isborder: false),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //////////////////////////////
              24.h.heightBox,

              Container(
                height: 231.h,
                width: Get.width,
                decoration: BoxDecoration(
                    boxShadow: [
                      (BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(0.3, 0.3),
                          spreadRadius: 2.5,
                          blurRadius: 2.5))
                    ],
                    border: Border.all(color: whiteColor),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(16.r)),
                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      height: 42.h,
                      decoration: BoxDecoration(
                        color: blueContainer,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16.r),
                          topLeft: Radius.circular(16.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "All User Predictions",
                          style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    15.h.heightBox,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Champion",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "1st Runner Up",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "2nd Runner Up",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Users",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Divider(
                            indent: 0,
                            height: 4,
                          ),
                          6.h.heightBox,
                          tableRowD(color: Color(0xffFFF6ED)),
                          2.h.heightBox,
                          tableRowD(color: Color(0xffEEF3FD)),
                          2.h.heightBox,
                          tableRowD(color: Color(0xffFFF6ED)),
                          20.h.heightBox,
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "View More",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 20.sp,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //////////////////////////////////////
              24.h.heightBox,

              Container(
                height: 231.h,
                width: Get.width,
                decoration: BoxDecoration(
                    boxShadow: [
                      (BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: Offset(0.3, 0.3),
                          spreadRadius: 2.5,
                          blurRadius: 2.5))
                    ],
                    border: Border.all(color: whiteColor),
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(16.r)),
                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      height: 42.h,
                      decoration: BoxDecoration(
                        color: blueContainer,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16.r),
                          topLeft: Radius.circular(16.r),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Champion Prediction Statistic",
                          style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    15.h.heightBox,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Team",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "% Of User Predictions",
                                style: GoogleFonts.rubik(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          5.h.heightBox,
                          ChampionPredictionData(
                            color: Color(0xffEEF3FD),
                            percentage: '48,6',
                            title: 'Germany',
                          ),
                          3.h.heightBox,
                          ChampionPredictionData(
                            color: Color(0xffFFF6ED),
                            percentage: '20,4',
                            title: 'Italy',
                          ),
                          3.h.heightBox,
                          ChampionPredictionData(
                            color: Color(0xffEEF3FD),
                            percentage: '18,8',
                            title: 'Brazil',
                          ),
                          16.h.heightBox,
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "View More",
                                  style: GoogleFonts.rubik(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 20.sp,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //////////////////////////////////////
              15.h.heightBox,
              Container(
                height: 113.h,
                width: Get.width,
                decoration: BoxDecoration(
                    color: blueMiniContainer,
                    borderRadius: BorderRadius.circular(16.r)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      11.h.heightBox,
                      Text(
                        "Refer New User",
                        style: GoogleFonts.rubik(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      10.h.heightBox,
                      Padding(
                        padding: EdgeInsets.only(right: 35.h),
                        child: RichText(
                          text: TextSpan(
                            text:
                                'All user can predict 1 Time, however you can get up to',
                            style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 15.sp,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      '10 Predictions Chance if you refer new user',
                                  style: GoogleFonts.rubik(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              24.h.heightBox,
              Text(
                "Our Sponsors",
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500),
              ),
              5.h.heightBox,
              Container(
                width: Get.width,
                child: Image.asset("assets/ss.png"),
              ),
              30.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }

  Container ChampionPredictionData(
      {required String title,
      required Color color,
      required String percentage}) {
    return Container(
      height: 37.h,
      color: color,
      child: ListTile(
        dense: true,
        visualDensity: VisualDensity(vertical: -2), //
        minLeadingWidth: 2,
        horizontalTitleGap: 10,
        // contentPadding: EdgeInsets.all(0),
        leading: Container(
          height: 30.h,
          width: 30.w,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/p.png"),
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontSize: 12.sp,
          ),
        ),
        trailing: Text(
          "$percentage %",
          style: GoogleFonts.rubik(
            color: Colors.black,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }

  Container tableRowD({required Color color}) {
    return Container(
        color: color,
        child: Table(
            // border: TableBorder.all(),
            // defaultColumnWidth: IntrinsicColumnWidth(),
            columnWidths: const <int, TableColumnWidth>{
              1: FixedColumnWidth(120), //2nd column width
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [
                tableCellData(text: 'Spain'),
                tableCellData(text: 'Germany'),
                tableCellData(text: 'Argentina'),
                tableCellData(text: '155'),
              ])
            ]));
  }

  Container tableCellData({required String text}) {
    return Container(
      height: 32.h,
      child: Center(
        child: TableCell(
          child: Text(
            text,
            style: GoogleFonts.rubik(
              color: Colors.black,
              fontSize: 12.sp,
            ),
          ),

          /////////
        ),
      ),
    );
  }
}
