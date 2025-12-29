import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_maker/Utility/asset_string.dart';

import '../Routes/routes_name.dart';
import '../Utility/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateFunc();
  }

  void navigateFunc() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAllNamed(RoutesName.homeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200.h,
                width: 200.w,
                child: Image.asset(AssetString.logo, fit: BoxFit.fill),
              ),
              SizedBox(height: 10.h),

              buildCommonText(
                "WEL-COME",
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
