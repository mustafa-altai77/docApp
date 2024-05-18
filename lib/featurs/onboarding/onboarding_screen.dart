import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/featurs/onboarding/widhets/doc_image_and_text.dart';
import 'package:doc/featurs/onboarding/widhets/doc_logo_and_name.dart';
import 'package:doc/featurs/onboarding/widhets/get_started_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            const DocLogoAndName(),
          verticalSpace(30),
            const DocImageAndText(),
            verticalSpace(30),
            const GetStartedButton()
          ],
        ),
      )),
    ));
  }
}
