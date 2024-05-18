import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:doc/featurs/home/logic/specialization_cubit.dart';
import 'package:doc/featurs/home/pages/home_page.dart';
import 'package:doc/featurs/home/widgets/doctor_banner.dart';
import 'package:doc/featurs/home/widgets/doctors_bloc_builder.dart';
import 'package:doc/featurs/home/widgets/specialization_bloc_builder.dart';
import 'package:doc/featurs/home/widgets/user_name_and_icon.dart';
import 'package:ff_navigation_bar_plus/ff_navigation_bar_item.dart';
import 'package:ff_navigation_bar_plus/ff_navigation_bar_plus.dart';
import 'package:ff_navigation_bar_plus/ff_navigation_bar_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(initialPage: 0);
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 5;
  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      HomePage(),
    ];
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              /// Provide NotchBottomBarController
              notchBottomBarController: _controller,
              color: Colors.white,
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 28.0,

              // notchShader: const SweepGradient(
              //   startAngle: 0,
              //   endAngle: pi / 2,
              //   colors: [Colors.red, Colors.green, Colors.orange],
              //   tileMode: TileMode.mirror,
              // ).createShader(Rect.fromCircle(center: Offset.zero, radius: 8.0)),
              notchColor: ColorsManager.mainBlue,

              /// restart app if you change removeMargins
              removeMargins: false,
              bottomBarWidth: 500,
              showShadow: false,
              durationInMilliSeconds: 300,

              itemLabelStyle: const TextStyle(fontSize: 10),

              elevation: 1,
              bottomBarItems: [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                ),
                BottomBarItem(
                  inActiveItem: Icon(Icons.message, color: Colors.blueGrey),
                  activeItem: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                ),
                BottomBarItem(
                  inActiveItem: Icon(Icons.search, color: Colors.blueGrey),
                  activeItem: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/icons/calendar.png',
                    color: Colors.grey,
                  ),
                  activeItem: Image.asset(
                    'assets/icons/calendar.png',
                    color: Colors.white,
                  ),
                ),
                BottomBarItem(
                  inActiveItem: Image.asset('assets/images/banner_image2.png'),
                  activeItem: Image.asset('assets/images/banner_image2.png'),
                ),
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
  }
}
