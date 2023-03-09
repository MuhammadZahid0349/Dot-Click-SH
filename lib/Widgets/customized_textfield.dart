import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizedTextfield extends StatelessWidget {
  final TextEditingController? myController;
  final String? hintText;
  // final bool? isPassword;

  const CustomizedTextfield({Key? key, this.myController, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      child: TextFormField(
        controller: myController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Fill this Filled';
          }
          return null;
        },
        decoration: InputDecoration(
          // errorText: ,
          // enabledBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.black, width: 1),
          //   borderRadius: BorderRadius.circular(10),
          // ),
          ////////////////////////////////
          // focusedBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.black, width: 1),
          //   borderRadius: BorderRadius.circular(10),
          // ),
          hintText: hintText,
          hintStyle: GoogleFonts.rubik(color: Color(0xffD9D9D9)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // errorText: _errorText,
        ),
      ),
    );
  }
}
