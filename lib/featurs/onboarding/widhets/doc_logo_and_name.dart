import 'package:doc/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class  DocLogoAndName extends StatelessWidget {
   const DocLogoAndName ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo.svg'),
        SizedBox(width: 10.w,),
        Text('Teladoc Health',style: TextStyles.font18BlackBold,),
      ],
    );
  }
}
