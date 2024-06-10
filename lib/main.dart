// Flutter version 3.22.1
// dart version 3.4.1
// author : Niraj Sanjay Patil
// date : 10 june 2024

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/consts/app_routes.dart';
import 'package:test/consts/app_theme.dart';

void main() {
  runApp(const BillionWorksUser());
}

class BillionWorksUser extends StatelessWidget {
  const BillionWorksUser({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) => MaterialApp.router(
        routerConfig: AppRoutes.router,
        theme: AppTheme.theme,
      ),
    );
  }
}
