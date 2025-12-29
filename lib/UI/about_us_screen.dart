import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Services/responsive_ui.dart';
import '../Utility/string_constant.dart';
import '../Utility/utils.dart';
import '../Widget/bottom_bar_widget.dart';
import '../Widget/common_app_bar_widget.dart';
import '../Widget/general_safe_area_widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUi.isMobile(context);
    return GeneralSafeAreaWidget(
      child: Scaffold(
        appBar: commonAppBar(),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: isMobile ? (Get.width / 1.2).w : (Get.width / 2).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12.h),

                    buildCommonText(
                      StringConstant.aboutUs,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "Resume Maker is a simple and user-friendly application designed to help individuals create professional resumes with ease. Our goal is to simplify the resume-building process by providing structured templates and an intuitive interface that allows users to enter their details and generate high-quality resumes in minutes.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "We focus on helping students, freshers, and professionals present their skills, education, and experience effectively without requiring any design or technical knowledge. With features like easy editing, live preview, and PDF export, Resume Maker ensures that users can create, update, and share their resumes anytime, anywhere.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Our mission is to empower job seekers by making resume creation fast, accessible, and professional for everyone.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      StringConstant.keyFeature,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    buildCommonText(
                      StringConstant.feature,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 16.h),

                    buildCommonText(
                      "Our Mission",
                      fontSize: 20.sp,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "Since 2005, Resume Now’s AI Resume Builder has empowered all job seekers to make a resume they’re confident in by offering a personalized, fast, and easy resume-building experience. Using our free tools to generate a resume, job seekers save time and find success.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 16.h),

                    buildCommonText(
                      "Your Go-To Service for Resume & Cover Letter Building",
                      fontSize: 20.sp,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "Resume Now’s AI Resume Builder makes creating a professional resume easy. Plus, we offer free tools to help you learn to write standout application materials, including a library of resume, CV, and cover letter examples, a wide selection of templates, and expert writing tips. Join the 2.2 million users who generate application materials using Resume Now every month to land their next big opportunity 2x faster.*",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 16.h),

                    buildCommonText(
                      "Our Commitment to the Highest Editorial Standards",
                      fontSize: 20.sp,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "We’ve also created a comprehensive library of articles offering actionable advice from industry experts on navigating the often confusing job search process. These articles are free to all job seekers and subject to Resume Now’s rigorous editorial process.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
