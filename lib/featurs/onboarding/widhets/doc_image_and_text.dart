import 'package:doc/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SvgPicture.asset('assets/svgs/docdoc_logo_low_opecity.svg'),
            Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0.0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.14, 0.4]),
              ),
              child: Image.asset('assets/images/onboarding_doc.png'),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 30,
              child: Text(
                'Best Doctor\nAppointment App',
                //'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                textAlign: TextAlign.center,
                style: TextStyles.font32BlueBold.copyWith(height: 1.2),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child:  Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            textAlign: TextAlign.center,
              style: TextStyles.font13GrayRegular
          ),
        ),
      ],
    );
  }
}
