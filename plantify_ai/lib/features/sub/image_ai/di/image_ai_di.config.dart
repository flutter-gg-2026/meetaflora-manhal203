// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:plantify_ai/core/network/dio_client.dart' as _i465;
import 'package:plantify_ai/features/sub/image_ai/data/datasources/image_ai_remote_data_source.dart'
    as _i36;
import 'package:plantify_ai/features/sub/image_ai/data/repositories/image_ai_repository_data.dart'
    as _i356;
import 'package:plantify_ai/features/sub/image_ai/domain/repositories/image_ai_repository_domain.dart'
    as _i276;
import 'package:plantify_ai/features/sub/image_ai/domain/use_cases/image_ai_use_case.dart'
    as _i430;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initImageAiSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i36.BaseImageRemoteDataSource>(
      () => _i36.ImageRemoteDataSource(gh<_i465.DioClient>()),
    );
    gh.lazySingleton<_i276.ImageAiRepositoryDomain>(
      () => _i356.ImageRepositoryData(gh<_i36.BaseImageRemoteDataSource>()),
    );
    gh.lazySingleton<_i430.ImageAiUseCase>(
      () => _i430.ImageAiUseCase(gh<_i276.ImageAiRepositoryDomain>()),
    );
    return this;
  }
}
