import 'package:flutter/material.dart';

class LogosOtherAccount extends StatelessWidget {
  const LogosOtherAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade200),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/google.png'),
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade200),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/facebook.png'),
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade200),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/apple.png'),
          ),
        ),
      ],
    ) ;
  }
}