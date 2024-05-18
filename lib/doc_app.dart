import 'package:doc/core/routing/app_router.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'core/routing/routers.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white
        ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routers.homeScreen,
      onGenerateRoute: appRouter.generateRoute,
      ),
    );

  }
}
