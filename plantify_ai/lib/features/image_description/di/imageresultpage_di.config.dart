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
import 'package:plantify_ai/features/image_description/data/datasources/imageresultpage_remote_data_source.dart'
    as _i812;
import 'package:plantify_ai/features/image_description/data/repositories/imageresultpage_repository_data.dart'
    as _i470;
import 'package:plantify_ai/features/image_description/domain/repositories/imageresultpage_repository_domain.dart'
    as _i32;
import 'package:plantify_ai/features/image_description/domain/use_cases/imageresultpage_use_case.dart'
    as _i569;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initImageresultpage({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i812.BaseImageresultpageRemoteDataSource>(
      () => _i812.ImageresultpageRemoteDataSource(
      ),
    );
    gh.lazySingleton<_i32.ImageresultpageRepositoryDomain>(
      () => _i470.ImageresultpageRepositoryData(
        gh<_i812.BaseImageresultpageRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i569.ImageresultpageUseCase>(
      () => _i569.ImageresultpageUseCase(
        gh<_i32.ImageresultpageRepositoryDomain>(),
      ),
    );
    return this;
  }
}
