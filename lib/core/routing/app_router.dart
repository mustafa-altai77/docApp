import 'package:doc/core/di/dependancy_injection.dart';
import 'package:doc/core/routing/routers.dart';
import 'package:doc/featurs/bookAppointment/book_appointment_screen.dart';
import 'package:doc/featurs/doctorProfileScreen/doctor_profile_screen.dart';
import 'package:doc/featurs/doctorSpeciality/doctor_speciality_screen.dart';
import 'package:doc/featurs/home/home_screen.dart';
import 'package:doc/featurs/home/logic/docrors_cubit.dart';
import 'package:doc/featurs/home/logic/specialization_state.dart';
import 'package:doc/featurs/login/logic/login_cubit.dart';
import 'package:doc/featurs/login/ui/login_screen.dart';
import 'package:doc/featurs/onboarding/onboarding_screen.dart';
import 'package:doc/featurs/recommendation_doctor/RecommendationDoctorScreen.dart';
import 'package:doc/featurs/signup/logic/signup_cubit.dart';
import 'package:doc/featurs/signup/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../featurs/home/logic/specialization_cubit.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routers.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (_) => getIt<LoginCubit>(),
                child: const LoginScreen()));
      case Routers.signupScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (_) => getIt<SignupCubit>(),
                  child: const SignupScreen(),
                ));
      case Routers.homeScreen:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(providers: [
                  BlocProvider(
                    create: (_) => getIt<SpecializationCubit>(),
                  ),
                  BlocProvider(
                    create: (_) => getIt<DoctorsCubit>(),
                  ),
                ], child: const HomeScreen()));
      case Routers.doctorSpecialityScreen:
        return MaterialPageRoute(
            builder: (_) =>  const DoctorSpecialityScreen());
      case Routers.recommendationDoctorScreen:
        return MaterialPageRoute(
            builder: (_) =>  const RecommendationDoctorScreen());
        case Routers.doctorProfileScreen:
        return MaterialPageRoute(
            builder: (_) =>  const DoctorProfileScreen());
      case Routers.bookAppointmentScreen:
        return MaterialPageRoute(
            builder: (_) =>  const BookAppointmentScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route define for ${settings.name}'),
                  ),
                ));
    }
  }
}
