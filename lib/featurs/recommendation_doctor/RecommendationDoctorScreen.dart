import 'package:doc/featurs/home/data/model/specialization_response.dart';
import 'package:doc/featurs/home/widgets/custom_app_bar.dart';
import 'package:doc/featurs/home/widgets/doctors_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helpers/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';
import '../../core/widgets/app_text_button.dart';
import '../../core/widgets/app_text_form_field.dart';
import '../login/ui/widgets/email_and_password.dart';

class RecommendationDoctorScreen extends StatelessWidget {
  final List<Doctors>? doctors;
  const RecommendationDoctorScreen({super.key, this.doctors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Recommendation Doctor',
        haveMenu: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.w),
        child: Column(
          children: [
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AppTextFormField(
                      prefixIcon: const Icon(CupertinoIcons.search),
                      backgroundColor: ColorsManager.moreLighterGray,
                      hintText: 'Search',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid name';
                        }
                      },
                    ),
                  ),
                  Icon(Icons.sort_rounded)
                ],
              ),
            ),
            verticalSpace(15),
            Expanded(
              child: ListView.builder(
                  itemCount: doctors?.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: DoctorsCard(
                        doctors: doctors![index],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
