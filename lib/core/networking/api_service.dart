import 'package:dio/dio.dart' hide Headers;
import 'package:doc/core/networking/api_constants.dart';
import 'package:doc/featurs/home/data/model/doctors_response.dart';
import 'package:doc/featurs/login/data/models/login_request_body.dart';
import 'package:doc/featurs/login/data/models/login_response.dart';
import 'package:doc/featurs/signup/data/models/signup_request_body.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../featurs/home/data/model/specialization_response.dart';
import '../../featurs/signup/data/models/signup_response.dart';

part 'api_service.g.dart';

// install retrofit_generator to generator the file named _ApiService
@RestApi(baseUrl: ApiConstants.apiBaseurl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  @POST(ApiConstants.register)
  Future<SignupResponse> register(
    @Body() SignupRequestBody signupRequestBody,
  );

  @GET(ApiConstants.getAllSpecialization)
  @Header('Authorization')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  })
  Future<SpecializationResponse> getAllSpecialization(
    @Header('Authorization') String token,
  );
  @GET(ApiConstants.getDoctors)
  @Header('Authorization')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  })
  Future<DoctorsResponse> getDoctors(
    @Header('Authorization') String token,
  );
}
