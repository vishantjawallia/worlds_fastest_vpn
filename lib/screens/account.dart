// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worlds_fastest_vpn/components/app_bar.dart';
import 'package:worlds_fastest_vpn/components/bottom_bar.dart';
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
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Image.asset(
                  MyImages.accounts,
                  height: 240,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Text(
                  'Looks like You’re not signed in yet.',
                  style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xfff3282B8)),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
                child: Text(
                  'SIGN IN',
                  style: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color(0xfff46424B).withOpacity(0.1),
                      width: 1.5,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: ListTile(
                  // leading: ImageIcon(
                  //   AssetImage(MyIcons.id),
                  // ),
                  title: Text(
                    'User ID',
                    style: GoogleFonts.roboto(fontSize: 14),
                  ),
                  subtitle: Text(
                    '284529462',
                    style: GoogleFonts.roboto(fontSize: 14),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color(0xfff46424B).withOpacity(0.1),
                      width: 1.5,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: ListTile(
                  // leading: ImageIcon(
                  //   AssetImage(MyIcons.premium),
                  // ),
                  title: Text(
                    'Base Plan',
                    style: GoogleFonts.roboto(fontSize: 14),
                  ),
                  trailing: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xfff3282B8)),
                      minimumSize: MaterialStateProperty.all(const Size(40, 18)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    child: Text(
                      'UPGRADE',
                      style: GoogleFonts.roboto(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: const Color(0xfff46424B).withOpacity(0.1),
                      width: 1.5,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: ListTile(
                  // leading: ImageIcon(
                  //   AssetImage(MyIcons.restore),
                  // ),
                  title: Text(
                    'Restore',
                    style: GoogleFonts.roboto(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
