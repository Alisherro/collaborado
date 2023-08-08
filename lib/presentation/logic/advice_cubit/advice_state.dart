part of 'advice_cubit.dart';

@immutable
abstract class AdviceState {}

class AdviceLoading extends AdviceState {}

class AdviceSuccess extends AdviceState {
  AdviceSuccess(this.advice);

  final String advice;
}
class AdviceError extends AdviceState {}

