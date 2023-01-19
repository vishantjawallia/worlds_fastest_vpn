import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:worlds_fastest_vpn/config/MyIcons.dart';

  customAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(9.h),
      child: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 2.sp),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ImageIcon(AssetImage(MyIcons.arrowBack),
                    color: const Color(0xfff404040), size: 24.sp),
                SizedBox(width: 8.w),
                Text(
                  'My Account',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
