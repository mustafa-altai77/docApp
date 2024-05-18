import 'package:doc/core/helpers/extensions.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:doc/core/theming/styles.dart';
import 'package:doc/featurs/login/logic/login_cubit.dart';
import 'package:doc/featurs/login/logic/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routers.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listener: (BuildContext context, state) {
          state.whenOrNull(loading: () {
            showDialog(
                context: context,
                builder: (context) => const Center(
                      child: CircularProgressIndicator(
                        color: ColorsManager.mainBlue,
                      ),
                    ));
          }, success: (loginResponse) {
            Navigator.of(context).pop();
            context.pushNamed(Routers.homeScreen);
          }, error: (error) {
            setupErrorState(context,error);
          });
        },
        listenWhen: (previous, current) =>
            current is Loading || current is Success || current is Error,
        child: const SizedBox.shrink());
  }
  setupErrorState(context,error)
  {
    Navigator.of(context).pop();
    showDialog(
        context: context,
        builder: (context) =>  AlertDialog(

          icon: const Icon(
            Icons.error,
            color: Colors.red,
            size: 32,
          ),
          content: Text(
            error,
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
