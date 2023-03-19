import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        widget: Center(
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: 180,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
