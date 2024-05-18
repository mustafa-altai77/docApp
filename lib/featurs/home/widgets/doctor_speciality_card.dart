import 'package:doc/core/helpers/extensions.dart';
import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/core/routing/routers.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:doc/core/theming/styles.dart';
import 'package:doc/featurs/doctorSpeciality/doctor_speciality_screen.dart';
import 'package:doc/featurs/home/data/model/specialization_response.dart';
import 'package:doc/featurs/home/logic/docrors_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'line_see_all.dart';

class DoctorSpecialityCard extends StatelessWidget {
  final List<AllData> dataList;
  const DoctorSpecialityCard({super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         LineSeeAll(
          labelDefinition: "Doctor Speciality", onTap: () {
           if (dataList != null) {
             print(dataList);
             // context.pushNamedList(
             //   Routers.doctorSpecialityScreen,
             //   arguments: dataList,
             // );
             Navigator.push(
               context,
               MaterialPageRoute(
                   builder: (context) => DoctorSpecialityScreen(dataList: dataList,)),
             );
           } else {
             print('dataList is null');
           }
         },
        ),
        verticalSpace(15),
        SizedBox(
          height: 90.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dataList.length - 5,
              itemBuilder: (context, index) {
                String firstCharacter =
                    dataList[index].name.toString().isNotEmpty
                        ? dataList[index].name.toString()[0]
                        : '';
                String lastCharacter = dataList[index]
                        .name
                        .toString()
                        .isNotEmpty
                    ? dataList[index]
                        .name
                        .toString()[dataList[index].name.toString().length - 1]
                    : '';
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorsManager.moreLighterGray),
                        child: Center(
                            child: Text(firstCharacter +
                                "" +
                                lastCharacter.toString())),
                      ),
                      verticalSpace(15),
                      Text(dataList[index].name.toString(),
                          style: TextStyles.font13GrayRegular),
                    ],
                  ),
                );
              }),
        ),

      ],
    );
  }
}
