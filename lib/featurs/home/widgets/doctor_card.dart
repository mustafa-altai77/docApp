import 'package:cached_network_image/cached_network_image.dart';
import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:doc/core/theming/styles.dart';
import 'package:doc/featurs/doctorSpeciality/doctor_speciality_screen.dart';
import 'package:doc/featurs/home/data/model/doctors_response.dart';
import 'package:doc/featurs/home/data/model/specialization_response.dart';
import 'package:doc/featurs/home/logic/docrors_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'line_see_all.dart';

class DoctorCard extends StatelessWidget {
  final List<AllDoctors> dataList;
  const DoctorCard({super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         LineSeeAll(
          labelDefinition: "Recommendation Doctor",
          onTap: () {
        },
        ),
        verticalSpace(15),
        SizedBox(
          height: 300.h,
          child: ListView.builder(
              itemCount: dataList.length - 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorsManager.moreLighterGray),
                          child: Container(
                            width: 130, // Set the desired width
                            height: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        dataList[index].photo.toString(),
                                        scale: 11),
                                    fit: BoxFit.cover)),
                          )),
                      horizontalSpace(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. " + dataList[index].name.toString(),
                            style: TextStyles.font13BlackSemiBold,
                          ),
                          Text(
                            dataList[index].specialization!.name.toString() +
                                " | " +
                                dataList[index]!.degree.toString(),
                            style: TextStyles.font13GrayRegular,
                          ),
                        verticalSpace(5),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.orange,),
                            Text("(4,279 reviews)",style: TextStyles.font13GrayRegular,)
                          ],
                        )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
