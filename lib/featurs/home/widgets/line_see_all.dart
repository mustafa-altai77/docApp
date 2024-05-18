import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class LineSeeAll extends StatelessWidget {
  final String? labelDefinition;
  final Function() onTap;
  const LineSeeAll({super.key, required this.labelDefinition, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          labelDefinition.toString(),
          style: TextStyles.font18BlackSemiBold,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            "See All",
            style: TextStyles.font13BlueRegular,
          ),
        )
      ],
    );
  }
}
