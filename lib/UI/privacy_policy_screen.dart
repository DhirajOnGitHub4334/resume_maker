import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Services/responsive_ui.dart';
import '../Utility/utils.dart';
import '../Widget/bottom_bar_widget.dart';
import '../Widget/common_app_bar_widget.dart';
import '../Widget/general_safe_area_widget.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
                  children: [
                    SizedBox(height: 14.h),

                    buildCommonText(
                      "Privacy Statement",
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 20.h),

                    buildCommonText(
                      "Welcome! This Privacy Statement (“Policy”) explains the online data practices, your data options and the disclosure of the information you Submit (“Information”) to Resume-Now® (“Resume-Now”, “we”, or “us”) in connection with our Services. To the extent permissible by law, by visiting Resume-Now you agree to the processing of your information data as explained in this Policy and our User Agreement, herein incorporated by reference.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 20.h),

                    buildCommonText(
                      "1. INTRODUCTION, SCOPE, & CONSENT",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "Resume-Now is an online destination that provides career building tools for its customers (“Customers”, “you”, or “your”). To help inform you of our privacy practices and the options you have about the collection and use of the Information collected on this site or collected through our family of websites that link to this Policy as well as our other related mobile websites, Resume-Now mobile applications (“mobile apps” or “Resume-Now Applications”), services, browser extensions, tools, and other applications that link to this Policy (all collectively hereinafter referred to as the “Site”). We do not guarantee employment for any user of the Site. When you use the Site, you are contracting with Resume-Now.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "2. QUESTIONS / CONTACTING US",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "You may contact Resume-Now by any of the means in the Contact us section on the Site. If continue to have questions about your privacy rights, you can email us at privacy@resume-now.com.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "3. INFORMATION WE COLLECT",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "3.1 Registration, Services, & Account Information. You can browse the Site without registering for an account with us. When you register an account or use certain of our services, create a profile, create a resume, search for or purchase services, or otherwise engage with our Site, you must provide certain information such as a username and a valid email address. You must also provide payment information such as credit or debit card information, name and billing address in order to purchase services. This information is only associated with your account after you have signed in as a registered user",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "3.2 Information to Respond to Your Requests. You may give us contact information so we can respond to your requests, as well as responding to your requests to send you newsletters and other communications. Details of how you can opt-out of receiving communications from us are detailed in the section headed Accessing, Reviewing, and Changing Your Personal Information.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "3.3 Social Media Information. We offer sign-on services that allow you to use third-party login credentials to access the Site. We also offer services that allow you to share information with third-party websites such as Facebook, Google, Twitter, and others. Unless otherwise prohibited by those third-party websites, when you link your account or engage with our Site through third-party sites, we may collect certain information stored on those sites such as your social networking credentials, your public profile, friend list, people you follow or who follow you, pictures, your e-mail address, birthday, work history, education history, interests, current city, religious and political views, website, personal description, and likes, and your friends’ birthdays, education histories, personal descriptions and likes.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "3.4 User Interaction Information. We can also receive other information (e.g., content viewed and information about the advertisements within the content you have been shown or have clicked on, etc.) from your interaction with our Site. You agree that we can share your interaction information with, or obtain information about your interaction from, analytics providers, advertising partners, third-party partners, and social media sites for two years or until you withdraw your consent for the purpose of providing or improving our services. Certain information that we may have access to from third-party services providers may be controlled by your privacy settings on that service and by your consent. Information that can be passed to analytics providers and advertising partners can be via cookies and tracking technologies.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "3.5 Information from other Sources. The information we collect can be combined with publicly available information.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "3.6 Mobile Information. By agreeing to this Policy you consent that we may collect additional information from you if you access our Site through a mobile device (e.g. your unique device identifier, device’s operating system, mobile carrier, location or GPS/geo-location, mobile number).",
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
