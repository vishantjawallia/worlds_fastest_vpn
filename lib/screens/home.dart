// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worlds_fastest_vpn/config/MyIcons.dart';
import 'package:worlds_fastest_vpn/config/MyImages.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(blurRadius: 12, color: Colors.grey.withOpacity(0.23), spreadRadius: 8, blurStyle: BlurStyle.outer),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(MyImages.flag, height: 26),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'United States',
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'IP ',
                                style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  '79.110.53.95',
                                  style: GoogleFonts.roboto(fontSize: 15, color: const Color(0xfff404040)),
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
                      ImageIcon(AssetImage(MyIcons.tower3), color: const Color(0xfff3282b8)),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {},
                        child: const Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Color(0xfff404040)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    ImageIcon(
                      AssetImage(MyIcons.arrowDown),
                      color: const Color(0xfff3282b8),
                      size: 26,
                    ),
                    const SizedBox(width: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '28.5 ',
                          style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'KB/s',
                            style: GoogleFonts.roboto(fontSize: 15, color: const Color(0xfff404040)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    ImageIcon(AssetImage(MyIcons.arrowUp), color: const Color(0xfff404040), size: 26),
                    const SizedBox(width: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '21.6 ',
                          style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'KB/s',
                            style: GoogleFonts.roboto(fontSize: 15, color: const Color(0xfff404040)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 300),
            Container(
              padding: const EdgeInsets.fromLTRB(37, 47, 31, 37),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(blurRadius: 12, color: Colors.grey.withOpacity(0.23), spreadRadius: 8, blurStyle: BlurStyle.outer),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    child: Image.asset(
                      MyImages.world,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '00:13:53 ',
                    style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
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
                color: const Color(0xfff95A0A8),
              ),
              onPressed: () {},
            ),
            IconButton(
              visualDensity: VisualDensity.standard,
              icon: ImageIcon(
                AssetImage(MyIcons.home),
                color: const Color(0xfff3282B8),
              ),
              onPressed: () {},
            ),
            IconButton(
              visualDensity: VisualDensity.standard,
              icon: ImageIcon(
                AssetImage(MyIcons.setting),
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
