import 'package:injectable/injectable.dart';

import 'package:plantify_ai/features/image_description/data/models/imageresultpage_model.dart';
import 'package:plantify_ai/core/errors/network_exceptions.dart';

abstract class BaseImageresultpageRemoteDataSource {
  Future<ImageresultpageModel> getImageresultpage();
}

@LazySingleton(as: BaseImageresultpageRemoteDataSource)
class ImageresultpageRemoteDataSource
    implements BaseImageresultpageRemoteDataSource {
  ImageresultpageRemoteDataSource();

  @override
  Future<ImageresultpageModel> getImageresultpage() async {
    try {
      return ImageresultpageModel(
        id: 1,
        firstName: "Last Name",
        lastName: "First Name",
      );
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
