import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_service.dart';
import 'package:doc/core/networking/dio_facrory.dart';
import 'package:doc/featurs/home/data/repository/docrors_repo.dart';
import 'package:doc/featurs/home/logic/docrors_cubit.dart';
import 'package:doc/featurs/home/logic/specialization_cubit.dart';
import 'package:doc/featurs/home/data/repository/specialization_repo.dart';
import 'package:doc/featurs/login/data/repositry/login_repo.dart';
import 'package:doc/featurs/login/logic/login_cubit.dart';
import 'package:doc/featurs/signup/data/repos/signup_repo.dart';
import 'package:doc/featurs/signup/logic/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  //Dio & APiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  // registerLazySingleton create one copy and used in whole app
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  //registerFactory mean create new copy
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  //home Specialization
  getIt.registerLazySingleton<SpecializationRepo>(() => SpecializationRepo(getIt()));
  getIt.registerFactory<SpecializationCubit>(() => SpecializationCubit(getIt()));

  //home Specialization
  getIt.registerLazySingleton<DoctorsRepo>(() => DoctorsRepo(getIt()));
  getIt.registerFactory<DoctorsCubit>(() => DoctorsCubit(getIt()));
}
