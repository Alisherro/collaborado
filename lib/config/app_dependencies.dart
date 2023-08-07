import 'package:collaborado/data/data_source/advice_remote_data_source.dart';

import '../data/repository/advice_repository_impl.dart';
import '../domain/usecase/advice_use_case.dart';

class AppDependencies {
  static GetRandomAdviceUseCase provideGetRandomAdviceUseCase() {
    return GetRandomAdviceUseCase(
      repository: AdviceRepositoryImpl(
        remoteDataSource: HttpDataSource(),
      ),
    );
  }

  static GetAdviceByIdUseCase provideGetAdviceByIdUseCase() {
    return GetAdviceByIdUseCase(
      repository: AdviceRepositoryImpl(
        remoteDataSource: HttpDataSource(),
      ),
    );
  }
}
