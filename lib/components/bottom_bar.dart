import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';
import 'package:worlds_fastest_vpn/config/MyIcons.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 22),
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
    );
  }
}
