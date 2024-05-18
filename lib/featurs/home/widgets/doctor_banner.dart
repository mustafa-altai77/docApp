import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:doc/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_text_button.dart';
import '../logic/specialization_cubit.dart';

class DoctorBanner extends StatelessWidget {
  const DoctorBanner({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 193.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: 170.h,
            width: double.infinity,

            child: Card(
              color: ColorsManager.mainBlue,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Book and\nschedule with\nnearest doctor',
                        style: TextStyles.font18DarkWhiteMedium,
                      ),
                      verticalSpace(10),
                      AppTextButton(
                          buttonText: "Find Nearby",
                          textStyle: TextStyles.font13DarkBlueRegular
                              .copyWith(color: ColorsManager.mainBlue),
                          backgroundColor: Colors.white,
                          buttonWidth: 100,

                          borderRadius: 30,
                          onPressed: () {

                          })
                    ]),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/images/banner_image2.png',
              fit: BoxFit.cover,
              height: 218,
            ),
          )
        ],
      ),
    );
  }
}
