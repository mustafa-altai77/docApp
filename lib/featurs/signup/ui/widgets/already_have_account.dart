import 'package:doc/core/helpers/extensions.dart';
import 'package:doc/core/routing/routers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign In',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                 context.pushReplacementNamed(Routers.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
