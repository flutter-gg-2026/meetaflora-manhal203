import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:plantify_ai/core/errors/failure.dart';
import 'package:plantify_ai/features/image_description/domain/entities/imageresultpage_entity.dart';
import 'package:plantify_ai/features/image_description/domain/repositories/imageresultpage_repository_domain.dart';


@lazySingleton
class ImageresultpageUseCase {
  final ImageresultpageRepositoryDomain _repositoryData;

  ImageresultpageUseCase(this._repositoryData);

   Future<Result<ImageresultpageEntity, Failure>> getImageresultpage() async {
    return _repositoryData.getImageresultpage();
  }
}
