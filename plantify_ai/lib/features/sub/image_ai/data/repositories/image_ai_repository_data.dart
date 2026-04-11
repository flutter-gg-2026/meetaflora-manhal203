import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:plantify_ai/core/errors/failure.dart';
import 'package:plantify_ai/core/errors/network_exceptions.dart';
import 'package:plantify_ai/features/sub/image_ai/data/datasources/image_ai_remote_data_source.dart';
import 'package:plantify_ai/features/sub/image_ai/domain/entities/image_ai_entity.dart';
import 'package:plantify_ai/features/sub/image_ai/domain/repositories/image_ai_repository_domain.dart';

@LazySingleton(as: ImageAiRepositoryDomain)
class ImageRepositoryData implements ImageAiRepositoryDomain {
  final BaseImageRemoteDataSource remote;

  ImageRepositoryData(this.remote);

  @override
  Future<Result<ImageAiEntity, Failure>> analyzeImage(File file) async {
    try {
      final result = await remote.analyzeImage(file);

      return Success(result.toEntity());
    } catch (e) {
      return Error(FailureExceptions.getException(e));
    }
  }
}
