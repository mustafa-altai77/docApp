import 'package:doc/core/helpers/extensions.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:doc/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routers.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: TextButton(
          onPressed: () {
            context.pushNamed(Routers.loginScreen);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize:
                  MaterialStateProperty.all(const Size(double.infinity, 52)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))),
          child: Text(
            'Get Started',
            style: TextStyles.font16WhiteSemiBold,
          )),
    );
  }
}
