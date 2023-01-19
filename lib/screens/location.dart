// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:worlds_fastest_vpn/config/MyIcons.dart';

import '../config/MyImages.dart';

class Location extends StatelessWidget {
  final TextEditingController _search = TextEditingController(text: '');
  Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(15.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          flexibleSpace: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 2.sp),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ImageIcon(AssetImage(MyIcons.arrowBack),
                          color: const Color(0xfff404040), size: 24.sp),
                      SizedBox(width: 8.w),
                      Text(
                        'Choose Location',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff46424B).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.fromLTRB(18.sp, 0, 9.sp, 0),
                    child: TextField(
                      controller: _search,
                      autocorrect: true,
                      decoration: InputDecoration(
                        focusColor: const Color(0xfff3282B8),
                        fillColor: const Color(0xfff3282B8),
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 16,
                          color: const Color(0xfff7B91A0),
                        ),
                        hintText: 'Search location',
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: index != 0
                      ? BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                color:
                                    const Color(0xfff46424B).withOpacity(0.1),
                                width: 2,
                                style: BorderStyle.solid),
                          ),
                        )
                      : const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(MyImages.flag, height: 20.sp),
                            const SizedBox(width: 16),
                            Text(
                              'United States',
                              style: GoogleFonts.roboto(
                                fontSize: 15,
                                color: const Color(0xfff404040),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage(MyIcons.tower3),
                              color: const Color(0xfff3282b8),
                              size: 14.sp,
                            ),
                            SizedBox(width: 4.w),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 20.sp,
                                color: const Color(0xfff8D8D8D),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
