

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/ui/screens/login_screen.dart';
import 'package:task_manager/ui/utils/assets_utils.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  /// "Start" Splash Screen 3 Second delay code
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin() {
    Future.delayed( const Duration(seconds: 3)).then((_) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
              (route) => false);
    });
  }
  /// "End" Splash Screen 3 Second delay code
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Center(
            child: SvgPicture.asset(
              AssetsUtils.logoSVG,
              width: 80,
              fit: BoxFit.scaleDown,
            ),
          ),
      ),
    );
  }
}
