import 'package:doc/core/helpers/extensions.dart';
import 'package:doc/featurs/home/data/model/specialization_response.dart';
import 'package:doc/featurs/home/logic/specialization_cubit.dart';
import 'package:doc/featurs/home/logic/specialization_state.dart';
import 'package:doc/featurs/home/widgets/doctor_speciality_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationCubit, SpecializationState>(
      builder: (context, state) {
        if (state is SpecializationSuccess) {
          final response = state.data;
          return LayoutBuilder(
            builder: (context, constraints) {
              return DoctorSpecialityCard(dataList: response.allData);
            },
          );
        } else if (state is SpecializationLoading) {
          return const Center(
              child: CircularProgressIndicator()); // Loading indicator
        } else if (state is SpecializationError) {
          return SizedBox.shrink(); //
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  setupErrorState(context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 32,
              ),
              content: Text(
                "error",
                style: TextStyles.font15DarkBlueMedium,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      "Got It",
                      style: TextStyles.font14BlueSemiBold,
                    ))
              ],
            ));
  }
}
