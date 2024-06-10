import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test/consts/app_info.dart';
import 'package:test/consts/spacing.dart';
import 'package:test/consts/typography.dart';
import 'package:test/views/auth_screens/sign_in/sign_in.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String id = "SplashScreen";

  changeScreen(context) {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).goNamed(SignInScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    changeScreen(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: Spacing.screenPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppInfo.logo, width: 100.w),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppInfo.name,
              style: TextStyle(
                fontFamily: Typo.medium,
                fontSize: 30.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
