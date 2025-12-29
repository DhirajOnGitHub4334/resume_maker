import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Routes/routes_name.dart';
import '../Utility/app_color.dart';
import '../Utility/asset_string.dart';
import '../Utility/string_constant.dart';

AppBar commonAppBar({String? flag = "0"}) {
  //flag == 0 Show Home And Contact BTN
  //flag == 1 show only Home Btn
  //flag ==2 show only contact btn
  return AppBar(
    elevation: 12,

    leading: Container(
      height: 20.h,
      width: 20.w,
      margin: EdgeInsets.all(2.r),
      child: Image.asset(AssetString.logo, fit: BoxFit.fill),
    ),
    title: Text(StringConstant.homeAppTitle),
    actions: flag == "1"
        ? [
            TextButton(
              onPressed: () => Get.offAllNamed(RoutesName.homeScreen),
              child: Text(
                StringConstant.home,
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ]
        : [
            flag == "2"
                ? Container()
                : TextButton(
                    onPressed: () => Get.offAllNamed(RoutesName.homeScreen),
                    child: Text(
                      StringConstant.home,
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
            TextButton(
              onPressed: () => Get.toNamed(RoutesName.contactUsScreen),
              child: Text(
                StringConstant.contactUs,
                style: TextStyle(color: AppColors.white),
              ),
            ),
          ],
  );
}
