import 'package:doc/featurs/home/data/model/specialization_response.dart';
import 'package:doc/featurs/recommendation_doctor/RecommendationDoctorScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';
import '../home/data/model/doctors_response.dart';
import '../home/widgets/custom_app_bar.dart';

class DoctorSpecialityScreen extends StatelessWidget {
  final List<AllData>? dataList;
  const DoctorSpecialityScreen({super.key, this.dataList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Doctor Speciality',),
      body: AnimationLimiter(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 50.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
          ),
          padding: EdgeInsets.symmetric(
              horizontal: 30.0.w, vertical: 30.h), // padding around the grid
          itemCount: dataList?.length, // total number of items
          itemBuilder: (context, index) {
            String firstCharacter = '';
            String lastCharacter = '';
            if (dataList != null &&
                dataList![index].name.toString().isNotEmpty) {
              firstCharacter = dataList![index].name.toString()[0];
              lastCharacter = dataList![index].name.toString()[
                  dataList![index].name.toString().toUpperCase().length - 1];
            }
            return AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 3,
              child: ScaleAnimation(
                duration: Duration(milliseconds: 1000),
                child: FadeInAnimation(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RecommendationDoctorScreen(doctors: dataList?[index].doctors,)),
                            );
                          },
                          child: Container(
                            height: 80.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: ColorsManager.moreLighterGray),
                            child: Center(
                                child: Text("$firstCharacter$lastCharacter")),
                          ),
                        ),
                        verticalSpace(5),
                        Flexible(
                          child: Text(dataList![index].name.toString(),
                              style: TextStyles.font13GrayRegular),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
