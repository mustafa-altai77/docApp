import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../logic/docrors_cubit.dart';
import '../logic/specialization_cubit.dart';
import '../widgets/doctor_banner.dart';
import '../widgets/doctors_bloc_builder.dart';
import '../widgets/specialization_bloc_builder.dart';
import '../widgets/user_name_and_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SpecializationCubit>().emitSpecializationState();
    context.read<DoctorsCubit>().emitDoctorsState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                UsernameAndIcon(),
                verticalSpace(20),
                DoctorBanner(),
                verticalSpace(10),
                SpecializationBlocBuilder(),
                verticalSpace(20),
                DoctorsBlocBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
