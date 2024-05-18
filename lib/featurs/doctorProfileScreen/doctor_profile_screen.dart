import 'package:doc/core/helpers/extensions.dart';
import 'package:doc/core/helpers/helper.dart';
import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:doc/core/widgets/app_text_button.dart';
import 'package:doc/featurs/home/data/model/specialization_response.dart';
import 'package:doc/featurs/home/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../core/routing/routers.dart';
import '../../core/theming/styles.dart';
import '../home/widgets/doctors_card.dart';

class DoctorProfileScreen extends StatelessWidget {
  final Doctors? doctors;
  const DoctorProfileScreen({super.key, this.doctors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: doctors!.name.toString(),
        haveMenu: true,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
          child: Column(children: [
            DoctorsCard(
              doctors: doctors,
              imageSize: 60.h,
            ),
            Expanded(
                child: Column(children: [
              // Doctor information sections
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: ColorsManager.mainBlue,
                      indicatorColor: ColorsManager.mainBlue,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab(text: 'About'),
                        Tab(text: 'Location'),
                        Tab(text: 'Reviews'),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height /
                          2, // Adjust height as needed
                      child: TabBarView(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                verticalSpace(10),
                                textHeaderLabel("About Me"),
                                verticalSpace(10),
                                textInfoLabel(
                                    "${doctors!.name}Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation."),
                                verticalSpace(20),
                                textHeaderLabel("Specialization and Degree"),
                                verticalSpace(10),
                                textInfoLabel("${doctors!.specialization!.name}"+" | ${doctors!.degree}"),
                                verticalSpace(20),
                                textHeaderLabel("Contact Info"),
                                verticalSpace(10),
                                textInfoLabel(
                                    "${doctors!.email! + "\n" + doctors!.phone!}"),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                verticalSpace(10),
                                textHeaderLabel("Practice Place"),
                                verticalSpace(10),
                                textInfoLabel(
                                    "${doctors!.address}"),
                                verticalSpace(10),
                                Image(
                                  image: AssetImage('assets/images/map.png'),
                                  fit: BoxFit.cover, // Adjust the fit as needed
                                ),


                              ],
                            ),
                          ),
                          Container(
                            child: Center(child: Text("No reviews yet ..")),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]))
          ])),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30),
        child: AppTextButton(
            buttonText: "Make An Appointment",
            textStyle: TextStyles.font16WhiteSemiBold,
            onPressed: () {
              context.pushNamed(Routers.bookAppointmentScreen);
            }),
      ),
    );
  }

  Widget textHeaderLabel(text) {
    return Text(
      text,
      style: TextStyles.font13BlackSemiBold,
    );
  }

  Widget textInfoLabel(text) {
    return Text(
      text,
      style: TextStyles.font13GrayRegular,
    );
  }

}
