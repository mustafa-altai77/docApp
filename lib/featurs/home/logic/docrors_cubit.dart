import 'package:bloc/bloc.dart';

import '../data/repository/docrors_repo.dart';
import 'doctors_state.dart';

class DoctorsCubit extends Cubit<DoctorsState> {
  final DoctorsRepo _doctorsRepo;

  DoctorsCubit(this._doctorsRepo) : super(const DoctorsState.initial());

  emitDoctorsState() async {
    emit(const DoctorsState.doctorsLoading());
    final response = await _doctorsRepo.getDoctors();
    response.when(success: (doctorsResponse) {
      emit(DoctorsState.doctorsSuccess(doctorsResponse));
    }, failure: (error) {
      emit(DoctorsState.doctorsError(error: error.apiErrorModel.message ?? ''));
    });
  }
}
