import 'package:flutter/material.dart';
import 'package:worlds_fastest_vpn/screens/home.dart';
import 'package:worlds_fastest_vpn/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wold's Fastest VPN",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        'splash': (context) => const Splash(),
        'home': (context) => const Home(),
      },
    );
  }
}
