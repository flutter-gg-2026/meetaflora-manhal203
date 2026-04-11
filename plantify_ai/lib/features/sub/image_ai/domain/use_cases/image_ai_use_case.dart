import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:plantify_ai/core/errors/failure.dart';
import 'package:plantify_ai/features/sub/image_ai/domain/entities/image_ai_entity.dart';
import 'package:plantify_ai/features/sub/image_ai/domain/repositories/image_ai_repository_domain.dart';
import 'dart:io';

@lazySingleton
class ImageAiUseCase {
  final ImageAiRepositoryDomain repository;

  ImageAiUseCase(this.repository);

  Future<Result<ImageAiEntity, Failure>> analyzeImage(File file) {
    return repository.analyzeImage(file);
  }
}
