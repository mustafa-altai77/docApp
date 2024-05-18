import 'package:doc/core/networking/api_constants.dart';
import 'package:doc/featurs/home/data/model/doctors_response.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class DoctorsRepo{
  final ApiService _apiService;

  DoctorsRepo(this._apiService);
  Future<ApiResult<DoctorsResponse>> getDoctors() async{
    try{
      final response = await _apiService.getDoctors(ApiConstants.token);
      return ApiResult.success(response);
    }
        catch(error){
          return ApiResult.failure(ErrorHandler.handle(error));
        }

  }
}