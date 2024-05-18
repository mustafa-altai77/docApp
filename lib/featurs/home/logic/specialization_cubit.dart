import 'package:bloc/bloc.dart';
import 'package:doc/featurs/home/data/model/specialization_response.dart';
import 'package:doc/featurs/home/logic/specialization_state.dart';

import '../data/repository/specialization_repo.dart';

class SpecializationCubit extends Cubit<SpecializationState> {
  final SpecializationRepo _specializationRepo;

  SpecializationCubit(this._specializationRepo)
      : super(const SpecializationState.initial());

   emitSpecializationState() async {
    emit(const SpecializationState.specializationLoading());
    final response = await _specializationRepo.getAllSpecialization();
    response.when(success: (specializationResponse) {
      emit(SpecializationState.specializationSuccess(specializationResponse));
    }, failure: (error) {
      emit(SpecializationState.specializationError(
          error: error.apiErrorModel.message ?? ''));
    });
  }
}

