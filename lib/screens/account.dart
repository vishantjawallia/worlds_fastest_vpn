// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:worlds_fastest_vpn/components/app_bar.dart';
import 'package:worlds_fastest_vpn/components/bottom_bar.dart';
import 'package:worlds_fastest_vpn/config/MyIcons.dart';
import 'package:worlds_fastest_vpn/config/MyImages.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
