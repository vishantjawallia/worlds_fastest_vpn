// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:worlds_fastest_vpn/config/MyIcons.dart';
import 'package:worlds_fastest_vpn/config/MyImages.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(9.h),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              child: SizedBox(
                child: Image.asset(
                  MyImages.appBarLogo,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(blurRadius: 12, color: Colors.grey.withOpacity(0.23), spreadRadius: 8, blurStyle: BlurStyle.outer),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(MyImages.flag, height: 20.sp),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'United States',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'IP ',
                                  style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w700),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '79.110.53.95',
                                    style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xfff404040)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage(MyIcons.tower3),
                          color: const Color(0xfff3282b8),
                          size: 16.sp,
                        ),
                        SizedBox(width: 2.w),
                        InkWell(
                          onTap: () {},
                          child: Icon(Icons.arrow_forward_ios_rounded, size: 16.sp, color: const Color(0xfff404040)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      ImageIcon(AssetImage(MyIcons.arrowDown), color: const Color(0xfff3282b8), size: 20.sp),
                      const SizedBox(width: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '28.5 ',
                            style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'KB/s',
                              style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xfff404040)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ImageIcon(AssetImage(MyIcons.arrowUp), color: const Color(0xfff404040), size: 20.sp),
                      const SizedBox(width: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '21.6 ',
                            style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'KB/s',
                              style: GoogleFonts.roboto(fontSize: 14, color: const Color(0xfff404040)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              Container(
                padding: EdgeInsets.fromLTRB(30.sp, 40.sp, 23.sp, 30.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(blurRadius: 12, color: Colors.grey.withOpacity(0.23), spreadRadius: 0, blurStyle: BlurStyle.outer),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                      child: Image.asset(
                        MyImages.world,
                      ),
                    ),
                    SizedBox(height: 0.8.h),
                    Text(
                      '00:13:53 ',
                      style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              visualDensity: VisualDensity.standard,
              icon: ImageIcon(
                AssetImage(MyIcons.profile),
                size: 18.sp,
                color: const Color(0xfff95A0A8),
              ),
              onPressed: () {},
            ),
            IconButton(
              visualDensity: VisualDensity.standard,
              icon: ImageIcon(
                AssetImage(MyIcons.home),
                size: 18.sp,
                color: const Color(0xfff3282B8),
              ),
              onPressed: () {},
            ),
            IconButton(
              visualDensity: VisualDensity.standard,
              icon: ImageIcon(
                AssetImage(MyIcons.setting),
                size: 18.sp,
                color: const Color(0xfff95A0A8),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
