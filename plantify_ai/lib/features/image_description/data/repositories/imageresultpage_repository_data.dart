
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:plantify_ai/core/errors/network_exceptions.dart';
import 'package:plantify_ai/core/errors/failure.dart';
import 'package:plantify_ai/features/image_description/domain/entities/imageresultpage_entity.dart';

import 'package:plantify_ai/features/image_description/data/datasources/imageresultpage_remote_data_source.dart';
import 'package:plantify_ai/features/image_description/data/models/imageresultpage_model.dart';
import 'package:plantify_ai/features/image_description/domain/repositories/imageresultpage_repository_domain.dart';

@LazySingleton(as: ImageresultpageRepositoryDomain)
class ImageresultpageRepositoryData implements ImageresultpageRepositoryDomain{
  final BaseImageresultpageRemoteDataSource remoteDataSource;


  ImageresultpageRepositoryData(this.remoteDataSource);

@override
  Future<Result<ImageresultpageEntity, Failure>> getImageresultpage() async {
    try {
      final response = await remoteDataSource.getImageresultpage();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
