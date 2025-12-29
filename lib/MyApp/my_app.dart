import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Routes/route_generator.dart';
import '../Routes/routes_name.dart';
import '../Services/theme_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) {
        final themeController = Get.put(ThemeProvider());
        return Obx(() {
          return GetMaterialApp(
            title: "Resume Maker",
            debugShowCheckedModeBanner: false,
            theme: themeController.currentTheme.value,
            getPages: RouteGenerator.getPage,
            initialRoute: RoutesName.splashScreen,
          );
        });
      },
    );
  }
}
