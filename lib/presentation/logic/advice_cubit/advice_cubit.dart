import 'package:bloc/bloc.dart';
import 'package:collaborado/domain/usecase/advice_use_case.dart';
import 'package:meta/meta.dart';

part 'advice_state.dart';

class AdviceCubit extends Cubit<AdviceState> {
  AdviceCubit(GetRandomAdviceUseCase useCase)
      : _useCase = useCase,
        super(AdviceLoading()) {
    getRandomAdvice();
  }

  final GetRandomAdviceUseCase _useCase;

  Future<void> getRandomAdvice() async {
    emit(AdviceLoading());
    final String advice = await _useCase().then((value) => value.advice);
    emit(AdviceSuccess(advice));
  }
}
