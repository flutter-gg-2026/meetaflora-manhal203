import 'package:plantify_ai/features/sub/image_ai/domain/entities/image_ai_entity.dart';

class ImageModel {
  final String description;

  ImageModel({required this.description});

  factory ImageModel.fromResponse(String text) {
    return ImageModel(description: text);
  }
  ImageAiEntity toEntity() {
    return ImageAiEntity(description: description);
  }
}
