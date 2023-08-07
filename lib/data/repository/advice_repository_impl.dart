import 'package:collaborado/data/data_source/advice_remote_data_source.dart';
import 'package:collaborado/domain/entity/advice_entity.dart';
import 'package:collaborado/domain/repository/advice_repository.dart';

import '../mapper/advice_mapper.dart';

class AdviceRepositoryImpl extends AdviceRepository {
  AdviceRepositoryImpl({required this.remoteDataSource});

  final AdviceRemoteDataSource remoteDataSource;

  @override
  Future<AdviceEntity> getAdviceById(int id) async {
    final model = await remoteDataSource.getAdviceById(id);
    return AdviceModelToEntityMapper().toEntity(model);
  }

  @override
  Future<AdviceEntity> getRandomAdvice() async {
    final advice = await remoteDataSource.getRandomAdvice();
    return AdviceModelToEntityMapper().toEntity(advice);
  }
}
