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
import 'package:plantify_ai/features/home/data/datasources/home_remote_data_source.dart'
    as _i110;
import 'package:plantify_ai/features/home/data/repositories/home_repository_data.dart'
    as _i890;
import 'package:plantify_ai/features/home/domain/repositories/home_repository_domain.dart'
    as _i930;
import 'package:plantify_ai/features/home/domain/use_cases/home_use_case.dart'
    as _i37;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initHome({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i110.BaseHomeRemoteDataSource>(
      () => _i110.HomeRemoteDataSource(),
    );
    gh.lazySingleton<_i930.HomeRepositoryDomain>(
      () => _i890.HomeRepositoryData(gh<_i110.BaseHomeRemoteDataSource>()),
    );
    gh.lazySingleton<_i37.HomeUseCase>(
      () => _i37.HomeUseCase(gh<_i930.HomeRepositoryDomain>()),
    );
    return this;
  }
}
