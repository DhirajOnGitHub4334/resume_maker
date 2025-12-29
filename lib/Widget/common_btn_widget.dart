import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_maker/Utility/app_color.dart';
import 'package:resume_maker/Utility/utils.dart';

class CommonBtnWidget extends StatelessWidget {
  const CommonBtnWidget({
    super.key,
    required this.onTap,
    required this.btnName,
  });

  final Function() onTap;
  final String btnName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.black),
        borderRadius: BorderRadius.circular(10.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      child: IntrinsicWidth(child: Center(child: buildCommonText(btnName))),
    );
  }
}
