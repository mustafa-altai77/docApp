import 'package:doc/core/di/dependancy_injection.dart';
import 'package:doc/core/routing/app_router.dart';
import 'package:doc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  //To fix text being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
