import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:doc/core/theming/styles.dart';
import 'package:doc/core/widgets/app_text_button.dart';
import 'package:doc/featurs/login/logic/login_cubit.dart';
import 'package:doc/featurs/login/ui/widgets/dont_have_account_text.dart';
import 'package:doc/featurs/login/ui/widgets/email_and_password.dart';
import 'package:doc/featurs/login/ui/widgets/login_bloc_listener.dart';
import 'package:doc/featurs/login/ui/widgets/logos_other_account.dart';
import 'package:doc/featurs/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/models/login_request_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font14GrayRegular,
              ),
              verticalSpace(36),
              Column(
                children: [
                  const EmailAndPassword(),
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        "Forget Password?",
                        style: TextStyles.font14BlueRegular,
                      )),
                  verticalSpace(40),
                  AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      }),
                  verticalSpace(30),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: ColorsManager.gray.withOpacity(0.5),
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Or sign in with',
                            style: TextStyles.font14lightGrayRegular,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: ColorsManager.gray.withOpacity(0.5),
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(30),
                  const LogosOtherAccount(),
                  verticalSpace(30),
                  const TermsAndConditionsText(),
                  verticalSpace(40),
                  const DontHaveAccountText(),
                  const LoginBlocListener(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().forKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
