import 'package:doc/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsernameAndIcon extends StatelessWidget {
  const UsernameAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi ,mustafa',
              style: TextStyles.font18BlackBold,
            ),
            Text('How Are you Today?', style: TextStyles.font13BlackRegular),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade200),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.notifications_none_outlined),
          ),
        ),
      ],
    );
  }
}
