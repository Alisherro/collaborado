import 'package:collaborado/data/mapper/mapper.dart';
import 'package:collaborado/data/model/advice_model.dart';
import 'package:collaborado/domain/entity/advice_entity.dart';

class AdviceModelToEntityMapper extends Mapper<AdviceModel, AdviceEntity> {
  @override
  AdviceModel fromEntity(AdviceEntity entity) =>
      AdviceModel(id: entity.id, advice: entity.advice);

  @override
  AdviceEntity toEntity(AdviceModel entity) =>
      AdviceEntity(id: entity.id ?? 0, advice: entity.advice ?? 'Error');
}
