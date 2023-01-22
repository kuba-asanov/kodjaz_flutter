/* External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/* Local dependencies */
import 'package:kodjaz/core/helpers/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final Widget? suffixIcon;
  final EdgeInsets? scrollPadding;

  const CustomTextField({
    required this.controller,
    this.scrollPadding,
    this.hintText,
    this.suffixIcon,
    this.errorText,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
      cursorColor: KodJazColors.black,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        errorText: errorText,
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KodJazColors.blue3),
          borderRadius: BorderRadius.circular(8.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KodJazColors.red),
          borderRadius: BorderRadius.circular(8.r),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
