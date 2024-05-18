import 'package:doc/featurs/doctorProfileScreen/doctor_profile_screen.dart';
import 'package:doc/featurs/home/data/model/specialization_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class DoctorsCard extends StatelessWidget {
  final Doctors? doctors;
  final double? imageSize;
  const DoctorsCard({super.key, required this.doctors, this.imageSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        imageSize==null?
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DoctorProfileScreen(
                    doctors: doctors,
                  )),
        ):Container();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsManager.moreLighterGray),
                    child: Container(
                      width: imageSize ?? 130, // Set the desired width
                      height: imageSize ?? 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(doctors!.photo.toString(),
                                  scale: 11),
                              fit: BoxFit.cover)),
                    )),
                horizontalSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. " + doctors!.name.toString(),
                      style: TextStyles.font13BlackSemiBold,
                    ),
                    Text(
                      doctors!.specialization!.name.toString() +
                          " | " +
                          doctors!.degree.toString(),
                      style: TextStyles.font13GrayRegular,
                    ),
                    verticalSpace(5),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text(
                          "(4,279 reviews)",
                          style: TextStyles.font13GrayRegular,
                        )
                      ],
                    )
                  ],
                ),

              ],
            ),
            imageSize != null ?
            Image.asset("assets/icons/message.png")
                :Container()
          ],
        ),
      ),
    );
  }
}
