import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:worlds_fastest_vpn/screens/account.dart';
import 'package:worlds_fastest_vpn/screens/home.dart';
import 'package:worlds_fastest_vpn/screens/location.dart';
import 'package:worlds_fastest_vpn/screens/permuim.dart';
import 'package:worlds_fastest_vpn/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Wold's Fastest VPN",
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primarySwatch: Colors.blue,
          ),
          // home: const Sample(),
          initialRoute: 'splash',
          routes: {
            'splash': (context) => const Splash(),
            'home': (context) => const Home(),
            'account': (context) => const Account(),
            'location': (context) => Location(),
            'premium': (context) => const Premium(),
          },
        );
      },
    );
  }
}
