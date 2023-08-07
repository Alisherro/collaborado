import 'package:collaborado/domain/repository/advice_repository.dart';

import '../entity/advice_entity.dart';

class GetAdviceByIdUseCase {
  GetAdviceByIdUseCase({required AdviceRepository repository})
      : _repository = repository;

  final AdviceRepository _repository;

  Future<AdviceEntity> call(int id) => _repository.getAdviceById(id);
}



class GetRandomAdviceUseCase {
  GetRandomAdviceUseCase({required AdviceRepository repository})
      : _repository = repository;

  final AdviceRepository _repository;

  Future<AdviceEntity> call() => _repository.getRandomAdvice();
}
