import 'package:doc/core/networking/api_constants.dart';
import 'package:doc/core/networking/api_error_handler.dart';
import 'package:doc/core/networking/api_service.dart';

import '../../../../core/networking/api_result.dart';
import '../model/specialization_response.dart';

class SpecializationRepo {
  final ApiService _apiService;

  SpecializationRepo(this._apiService);

  Future<ApiResult<SpecializationResponse>> getAllSpecialization() async {
    try {
      final response = await _apiService.getAllSpecialization(ApiConstants.token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
