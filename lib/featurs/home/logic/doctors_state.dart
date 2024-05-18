import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctors_state.freezed.dart';

@Freezed()
class DoctorsState<T> with _$DoctorsState<T> {
  const factory DoctorsState.initial() = _Initial;
  const factory DoctorsState.doctorsLoading() = DoctorsStateLoading;
  const factory DoctorsState.doctorsSuccess(T data) =
  DoctorsSuccess<T>;
  const factory DoctorsState.doctorsError({required String error}) =DoctorsError;
}