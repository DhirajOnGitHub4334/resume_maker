import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_maker/Utility/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Controller/faq_controller.dart';
import '../Services/responsive_ui.dart';
import '../Utility/app_color.dart';
import '../Widget/bottom_bar_widget.dart';
import '../Widget/common_app_bar_widget.dart';
import '../Widget/general_safe_area_widget.dart';

class FaqScreen extends StatelessWidget {
  FaqScreen({super.key});

  final controller = Get.put(FaqController());

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveUi.isMobile(context);
    return GeneralSafeAreaWidget(
      child: Scaffold(
        appBar: commonAppBar(),

        body: SingleChildScrollView(
          child: Column(
            children: [
              //First Container
              _buildFirstContainer(),

              //Second Container
              _buildSecondContainer(isMobile),

              SizedBox(height: 20.h),

              BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFirstContainer() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.white,
            AppColors.white,
            AppColors.white,
            AppColors.white,
            AppColors.blue.withValues(alpha: 0.2),
            AppColors.blue.withValues(alpha: 0.3),
            AppColors.blue.withValues(alpha: 0.4),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          buildCommonText(
            "Succeeding With Resume Now: Your Questions Answered",
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            fontSize: 32.sp,
          ),

          SizedBox(height: 20.h),
          buildCommonText(
            "Discover how Resume Now simplifies creating resumes, CVs, and cover letters. This page guides you through our tools and shares essential tips to help your application stand out.",
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildSecondContainer(bool isMobile) {
    return Container(
      alignment: Alignment.center,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),

      child: SizedBox(
        width: isMobile ? (Get.width / 1.2).w : (Get.width / 2).w,
        child: Column(
          children: [
            SizedBox(height: 20.h),
            buildCommonText(
              "Your Guide to Resume Now's AI Resume Builder",
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),

            SizedBox(height: 20.h),

            _buildQuestionAnswerWidget(
              index: 0,
              que: "What does Resume Now do?",
              ans:
                  "Resume Now’s team of career development experts, certified professional resume and cover letter writers, and recruitment specialists are here to help job seekers get hired. We do this by offering thousands of recruiter-approved, job-specific resume and cover letter examples, a variety of resume templates and cover letter designs, expert reviews, professional resume and cover letter writing services, advice, resources, job search tools, and an award-winning Resume Maker.",
            ),

            _buildDividerWidget(),

            _buildQuestionAnswerWidget(
              index: 1,
              que: "How does your AI Resume Builder work?",
              ans:
                  '''Resume Now’s Resume Maker makes it easy to build an interview-winning resume in just minutes. Here’s how:

Choose a resume template using our resume examples to guide you.
Answer a few questions (i.e., “How much work experience do you have?”).
Fill out each section of the template. We’ll help you!
Customize your resume to suit the job for which you’re applying.
Proofread and edit your resume.
Save and download it.
Send it to the employer along with your cover letter''',
            ),

            _buildDividerWidget(),

            _buildQuestionAnswerWidget(
              index: 2,
              que:
                  "How long does it take to write a resume in your AI Resume Builder?",
              ans:
                  "You can write a resume in just 15 minutes with Resume Now’s AI Resume Builder.",
            ),

            _buildDividerWidget(),

            _buildQuestionAnswerWidget(
              index: 3,
              que:
                  "How do I use Resume Now’s AI Resume Builder to create my CV?",
              ans:
                  '''Creating and customizing a professional CV using Resume Now’s AI Resume Builder is incredibly easy.

Click on the “Create Your Resume” button to begin. Then, choose a template from one of the four categories (Popular, Unique, Modern, and Classic).
Follow the instruction prompts from the builder to enter your contact information and work experience.
After completing the guided sections, you’ll be able to edit your document. If you end up back in the dashboard after saving your document, simply click the pencil icon in the center of your document to start editing again. You will find the breakdown of your CV sections on the right side of the edit menu, below the “Spell Check” function. To get to the custom sections menu, click “Add a Section.”
Once you’ve clicked the “Add a Section” plus sign, you will be directed to the menu with available add-ons such as Activities & Honors, Accomplishments, and Certifications. You can also select “Add a Custom Section” to create your sections.
When you’ve finished adding a new section, you will be directed back to the editing menu, where you can go over the area with your mouse to move, edit, or delete unnecessary information. To organize the section layout of your document, hover over the area you want to move, and an icon with arrows will pop up on the top right of the section box.
Once you have returned to the editing menu, if you would like to format your document, click the formatting arrow at the bottom of the page, in between “template” and “color.” That’s where you can adjust the margins, font size, font style, and spacing.
To choose from eight different colors for your document, simply go back to the bottom menu and select the color arrow on the far right.
If you want to change your template selection, go to the far left of the bottom menu and select the template arrow.
Make sure to spell check your document and then click the “Save & Next” button by the color arrow before downloading your CV to save your work.''',
            ),

            _buildDividerWidget(),

            _buildQuestionAnswerWidget(
              index: 4,
              que: "How does your resume cover letter builder work?",
              ans:
                  '''Resume Now’s Cover Letter Generator makes it easy to write an attention-grabbing cover letter fast. Here’s how:

Choose a cover letter template using our cover letter examples to guide you.
Upload your existing cover letter or personalize one of ours.
Use the job-specific example text from our builder to help you create compelling and descriptive paragraphs based on your job experience and qualifications.
Polish it off with our easy-to-use formatting tool and spell-checker.
Proofread it for grammar and accuracy.
Save and download it.
Send it to the employer along with your resume''',
            ),

            _buildDividerWidget(),

            _buildQuestionAnswerWidget(
              index: 5,
              que:
                  "How long does it take to write a cover letter in your builder?",
              ans:
                  "Resume Now’s Cover Letter Builder takes just 15 minutes to use from start to finish!",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionAnswerWidget({
    required int index,
    required String que,
    required String ans,
  }) {
    return Obx(() {
      final isExpanded = controller.expandedList[index];

      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: buildCommonText(
                  que,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              IconButton(
                onPressed: () => controller.toggle(index),
                icon: Icon(isExpanded ? Icons.remove : Icons.add),
              ),
            ],
          ),

          AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            firstChild: const SizedBox.shrink(),
            secondChild: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: AppColors.grey.withValues(alpha: 0.2),
              ),

              child: buildCommonText(ans, fontSize: 16.sp),
            ),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
          ),
        ],
      );
    });
  }

  Widget _buildDividerWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10.h),

        Divider(),

        SizedBox(height: 10.h),
      ],
    );
  }
}
