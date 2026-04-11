import 'package:multiple_result/multiple_result.dart';
import 'package:plantify_ai/core/errors/failure.dart';
import 'package:plantify_ai/features/image_description/domain/entities/imageresultpage_entity.dart';

abstract class ImageresultpageRepositoryDomain {
    Future<Result<ImageresultpageEntity, Failure>> getImageresultpage();
}
