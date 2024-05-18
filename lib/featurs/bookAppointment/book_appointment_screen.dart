import 'package:doc/core/theming/colors.dart';
import 'package:doc/featurs/home/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({super.key});

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        title: Text('Date & Time'),
        content: Text('Content for step 1'),
        isActive: currentStep >= 0, // Mark the current step
      ),
      Step(
        isActive: currentStep >= 1,
        title: Text('Payment'),
        content: Text('Content for step 2'),
      ),
      Step(
        isActive: currentStep >= 2,
        title: Text('Summary'),
        content: Text('Content for step 3'),
      ),
    ];
    return Scaffold(
      appBar: const CustomAppBar(title: "Book Appointment"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            children: [
              Expanded(
                child: Theme(
                  data: ThemeData(
                    shadowColor: Colors.transparent,
                    canvasColor: Colors.white,
                    colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: ColorsManager.mainBlue,
                      background: Colors.red,
                      secondary: Colors.green,
                    ),

                  ),
                  child: Stepper(
                    type: StepperType.horizontal,
                    currentStep: currentStep,
                    steps: steps,
                    onStepTapped: (step) {},
                    onStepCancel: () {
                      setState(() {
                        currentStep == 0 ? null : currentStep -= 1;
                      });
                    },
                    onStepContinue: () {
                      final isLast = currentStep == steps.length - 1;
                      if (isLast == true) {
                        print("complete");
                      } else {
                        setState(() {
                          currentStep += 1;
                        });
                      }
                    },
                    controlsBuilder:
                        (BuildContext context, ControlsDetails details) {
                      return Row(
                        children: [
                          ElevatedButton(
                            onPressed: details.onStepContinue,
                            child: Text('Continue'),
                          ),
                          if (details.currentStep != steps.length - 1)
                            TextButton(
                              onPressed: details.onStepCancel,
                              child: Text('Cancel'),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
