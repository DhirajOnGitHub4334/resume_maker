import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_maker/Utility/utils.dart';

import '../Routes/routes_name.dart';
import '../Services/responsive_ui.dart';
import '../Utility/app_color.dart';
import '../Utility/string_constant.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUi.isMobile(context);
    return Container(
      width: Get.width,

      decoration: BoxDecoration(color: AppColors.black),
      child: IntrinsicHeight(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 20.w,
            vertical: 16.h,
          ),
          child: Column(
            crossAxisAlignment: isMobile
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildAboutTextBtn(),

                        _buildPrivacyPolicyTextBtn(),

                        _buildTermAndConditionTextBtn(),

                        _buildContactUsTextBtn(),

                        _buildFAQTextBtn(),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildAboutTextBtn(),

                        buildCommonText("|", color: AppColors.white),

                        _buildPrivacyPolicyTextBtn(),

                        buildCommonText("|", color: AppColors.white),

                        _buildTermAndConditionTextBtn(),

                        buildCommonText("|", color: AppColors.white),

                        _buildContactUsTextBtn(),

                        buildCommonText("|", color: AppColors.white),

                        _buildFAQTextBtn(),
                      ],
                    ),

              SizedBox(height: 12.h),

              Divider(color: AppColors.grey),

              buildCommonText(StringConstant.lastLine, color: AppColors.grey),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAboutTextBtn() {
    return TextButton(
      onPressed: () => Get.toNamed(RoutesName.aboutScreen),
      child: buildCommonText(
        StringConstant.aboutUs.toUpperCase(),
        color: AppColors.white,
      ),
    );
  }

  Widget _buildContactUsTextBtn() {
    return TextButton(
      onPressed: () => Get.toNamed(RoutesName.contactUsScreen),
      child: buildCommonText(
        StringConstant.contactUs.toUpperCase(),
        color: AppColors.white,
      ),
    );
  }

  Widget _buildTermAndConditionTextBtn() {
    return TextButton(
      onPressed: () => Get.toNamed(RoutesName.termAndConditionScreen),
      child: buildCommonText(
        StringConstant.termAndCondition.toUpperCase(),
        color: AppColors.white,
      ),
    );
  }

  Widget _buildPrivacyPolicyTextBtn() {
    return TextButton(
      onPressed: () => Get.toNamed(RoutesName.privacyScreen),
      child: buildCommonText(
        StringConstant.privacyPolicy.toUpperCase(),
        color: AppColors.white,
      ),
    );
  }

  Widget _buildFAQTextBtn() {
    return TextButton(
      onPressed: () => Get.toNamed(RoutesName.faqScreen),
      child: buildCommonText(
        StringConstant.faqs.toUpperCase(),
        color: AppColors.white,
      ),
    );
  }
}
