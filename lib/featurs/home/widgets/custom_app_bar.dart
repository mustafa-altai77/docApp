import 'package:doc/core/helpers/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? haveMenu;
  const CustomAppBar({super.key, required this.title, this.haveMenu});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.h),
      child: AppBar(

        backgroundColor: Colors.white,
        title: Text(
          title,
          style: TextStyles.font16BlackSemiBold,
        ),
        actions: [
          haveMenu==true?
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.w),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                    width: 1, color: Colors.grey.shade200
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    IconButton(
                      icon:  Image.asset("assets/icons/dots.png"),
                      onPressed: () {
                        Navigator.pop(
                            context); // Use Navigator.pop instead of context.pop
                      },
                    ),
                  ],
                ),
              ),
            ],
          ):Container(),
        ],        centerTitle: true,
        leading: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.w),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade200
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_sharp),
                    onPressed: () {
                      Navigator.pop(
                          context); // Use Navigator.pop instead of context.pop
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
