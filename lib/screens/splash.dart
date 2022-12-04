import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:worlds_fastest_vpn/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late double _width = 0;
  late double _height = 0;
  double percent = 0;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _width = 220.sp;
        _height = 220.sp;
      });
      Future.delayed(const Duration(seconds: 1), () {
        callTimer();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Align(
              alignment: Alignment.center,
              child: AnimatedContainer(
                padding: EdgeInsets.only(top: 26.sp),
                width: _width,
                height: _height,
                duration: const Duration(milliseconds: 1500),
                curve: Curves.linearToEaseOut,
                child: Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'assets/logo.png',
                  ),
                ),
              ),
            ),
          ),
          // percent > 0
          //     ? Container(
          //         padding: const EdgeInsets.symmetric(horizontal: 26),
          //         margin: EdgeInsets.only(bottom: 26.sp),
          //         child: CircularProgressIndicator(
          //           value: percent,
          //           backgroundColor: const Color(0xff3282B8).withOpacity(0.35),
          //           color: const Color(0xff3282B8),
          //           // minHeight: 4,
          //         ),
          //       )
          //     : const SizedBox(),
          percent > 0
              ? Container(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  margin: EdgeInsets.only(bottom: 26.sp),
                  child: LinearProgressIndicator(
                    value: percent,
                    backgroundColor: const Color(0xff3282B8).withOpacity(0.35),
                    color: const Color(0xff3282B8),
                    minHeight: 4,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  void callTimer() {
    log("message");
    Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if (percent >= 0.99) {
        timer.cancel();
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
      } else {
        setState(() {
          percent = percent + 0.001;
        });
      }
    });
  }
}
