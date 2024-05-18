import 'package:freezed_annotation/freezed_annotation.dart';
part 'specialization_state.freezed.dart';

@Freezed()
class SpecializationState<T> with _$SpecializationState<T> {
  const factory SpecializationState.initial() = _Initial;
  const factory SpecializationState.specializationLoading() = SpecializationLoading;
  const factory SpecializationState.specializationSuccess(T data) =
      SpecializationSuccess<T>;
  const factory SpecializationState.specializationError({required String error}) =
      SpecializationError;
}
