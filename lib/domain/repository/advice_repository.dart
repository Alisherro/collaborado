import '../entity/advice_entity.dart';

abstract class AdviceRepository {
  Future<AdviceEntity> getRandomAdvice();

  Future<AdviceEntity> getAdviceById(int id);
}
