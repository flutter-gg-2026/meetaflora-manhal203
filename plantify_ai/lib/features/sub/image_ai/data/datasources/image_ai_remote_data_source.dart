import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:plantify_ai/core/network/dio_client.dart';
import 'package:plantify_ai/core/network/gemini_method.dart';
import 'package:plantify_ai/features/sub/image_ai/data/models/image_ai_model.dart';

abstract class BaseImageRemoteDataSource {
  Future<ImageModel> analyzeImage(File file);
}

@LazySingleton(as: BaseImageRemoteDataSource)
class ImageRemoteDataSource implements BaseImageRemoteDataSource {
  final DioClient _dio;

  ImageRemoteDataSource(this._dio);

  final String apiKey = "AIzaSyC61LgDmu799uv6mSoeGwDaK_MlrkHQVLI";

  @override
  Future<ImageModel> analyzeImage(File file) async {
    final result = await _dio.analyzeImage(file: file, apiKey: apiKey);

    return ImageModel.fromResponse(result);
  }
}
