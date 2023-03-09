import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizedTextFormfield extends StatefulWidget {
  final TextEditingController? myController;
  final String hintText;
  final bool isPassword;

  const CustomizedTextFormfield(
      {Key? key,
      this.myController,
      required this.hintText,
      required this.isPassword})
      : super(key: key);

  @override
  State<CustomizedTextFormfield> createState() =>
      _CustomizedTextFormfieldState();
}

class _CustomizedTextFormfieldState extends State<CustomizedTextFormfield> {
  bool _isVisible = false;

  void _showPassword() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      child: TextFormField(
        keyboardType: widget.isPassword
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        enableSuggestions: widget.isPassword ? false : true,
        obscureText: _isVisible ? false : widget.isPassword,
        controller: widget.myController,
        validator: widget.isPassword
            ? (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Password';
                }
                // } else if (value.length < 6) {
                //   return 'Password must be greater then 6';
                // }
                return null;
              }
            : (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Email';
                } else if (!value.contains('@')) {
                  return 'Please enter Valid Email';
                } else if (!value.contains('.com')) {
                  return 'Please enter Valid Email';
                }
                return null;
              },
        decoration: InputDecoration(
          // labelText: 'Email:',
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _isVisible ? Icons.remove_red_eye : Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: () => _showPassword(),
                )
              : null,
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
          hintText: widget.hintText,
          hintStyle: GoogleFonts.rubik(color: Color(0xffD9D9D9)),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
