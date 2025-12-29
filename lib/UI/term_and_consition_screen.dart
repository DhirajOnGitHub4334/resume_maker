import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_maker/Utility/utils.dart';

import '../Services/responsive_ui.dart';
import '../Widget/bottom_bar_widget.dart';
import '../Widget/common_app_bar_widget.dart';
import '../Widget/general_safe_area_widget.dart';

class TermAndConsitionScreen extends StatelessWidget {
  const TermAndConsitionScreen({super.key});

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
                      "User Agreement",
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 20.h),

                    buildCommonText(
                      "Welcome to Resume-Now! It is our pleasure to provide the services described below for your professional development in accordance with the User Agreement and all other legal documents incorporated herein by reference (collectively, the “Terms”). Please read carefully these Terms.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "PLEASE READ THESE TERMS CAREFULLY BEFORE USING THE SERVICE, BECAUSE THEY AFFECT YOUR LEGAL RIGHTS AND OBLIGATIONS. IF YOU DO NOT AGREE TO BE BOUND BY THESE TERMS, OR IF AT ANY TIME, THE TERMS ARE NO LONGER ACCEPTABLE TO YOU, PLEASE CEASE USE OF THE SERVICE IMMEDIATELY. THE SITE IS DIRECTED TO PEOPLE WITHIN THE UNITED STATES. CONTENT AVAILABLE ON OR THROUGH THE SITE MAY NOT BE APPROPRIATE OR AVAILABLE IN OTHER LOCATIONS. BOLD MAY LIMIT THE AVAILABILITY OF THE SITE AND SERVICE TO ANY PERSON OR GEOGRAPHIC AREA AT ANY TIME. IF YOU ACCESS THE SITE FROM OUTSIDE THE UNITED STATES, YOU DO SO AT YOUR OWN RISK.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "SECTION 13 CONTAINS AN ARBITRATION CLAUSE AND CLASS ACTION WAIVER. BY AGREEING TO THESE TERMS, YOU AGREE (A) TO RESOLVE ALL DISPUTES (WITH LIMITED EXCEPTIONS) RELATED TO THE PROVIDER’S SERVICES AND/OR PRODUCTS THROUGH BINDING INDIVIDUAL ARBITRATION, WHICH MEANS THAT YOU WAIVE ANY RIGHT TO HAVE THOSE DISPUTES DECIDED BY A JUDGE OR JURY, AND (B) TO WAIVE YOUR RIGHT TO PARTICIPATE IN CLASS ACTIONS, CLASS ARBITRATIONS, OR REPRESENTATIVE ACTIONS, AS SET FORTH BELOW.  YOU HAVE THE RIGHT TO OPT-OUT OF THE ARBITRATION CLAUSE AND THE CLASS ACTION WAIVER AS EXPLAINED IN SECTION 13.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "1. SERVICE DESCRIPTION, ACCEPTANCE OF THESE TERMS, CONTRACTUAL RELATIONSHIP",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "These Terms establish a legal contract between the merchant of record stated in Section 10, as the services provider and the owner of all intellectual property in the site (hereinafter collectively referred as “Resume-Now”, “we”, or “us”) and each user (“user”, “you”, or “your”) in connection to the access and use of our website, and internet properties as linked and any software that we provide you as offered by us, our subsidiaries, and our affiliated companies (collectively the “Site”). The Site may also include, unless otherwise specified in these Terms, the use of our online platform, proprietary content, tools, software, materials, and other services offered through the site (collectively, hereinafter, the “Service”). You represent and warrant that you are of age under the laws of your jurisdiction and/or lawfully able to enter into contracts. If you are not legally able to enter into contracts, you shall not use the Service at any time or in any manner or submit any information to Resume-Now or the Service.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 10.h),

                    buildCommonText(
                      "2. CHANGES TO THESE TERMS",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "2.1 Terms. Resume-Now can change, update, add or remove provisions of these Terms, at any time by posting the updated Terms on the Site and by providing a notice on the Site. If you do not agree with any of the updated Terms, you must stop using the Service. If you would like to receive a copy of a previous version of the Terms that have applied to you, please send an email with your request to legal@resume-now.com.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "2.2 Service. Resume-Now may make changes to the Service at any time, without notice. If you object to any changes to the Service, your only recourse will be to cease using it. Continued use of the Service following posting of any such changes will indicate your acknowledgement of such changes and satisfaction with the Service as modified. We also reserve the right to discontinue the Service or any component of it, at any time without notice. Some elements of the Service may only be offered in the desktop version of the Site and may not be, for example, available in the mobile version of the Site. We will not be liable to you or any third-party should we exercise our right to modify or discontinue the Service.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "2.3 Subscription Payment. Please note that if you are under paid subscription services with us, in the event we change the price for the services which you have previously agreed to pay or if we substantially change the services you are paying for, we will notify you of such changes as contemplated in Section 2.1. Any changes will become effective as of, and reflected on, your next scheduled payment. If you do not agree with such changes you may cancel your paid subscription by communicating with us in accordance with the Cancellation section below.",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "2.4 Additional Terms. In addition, certain features of the Service may be subject to additional terms of use (“Additional Terms”), which shall be provided to you at the moment you choose to use such features. By using such features, or any part thereof, you agree to be bound by the Additional Terms applicable to such features. In the event that any of the Additional Terms governing such area conflict with these Terms, the Additional Terms will govern.",
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
