import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utility/app_color.dart';
import '../Utility/asset_string.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: true,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 60.w,
              height: 60.h,
              child: CircularProgressIndicator(
                strokeWidth: 4.sp,
                color: AppColors.blue,
              ),
            ),
            Image.asset(AssetString.logo, width: 32.w, height: 32.h),
          ],
        ),
      ),
    );
  }
}
