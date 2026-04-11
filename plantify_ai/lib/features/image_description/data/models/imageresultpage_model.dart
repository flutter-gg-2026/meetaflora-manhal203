import 'package:plantify_ai/features/image_description/domain/entities/imageresultpage_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'imageresultpage_model.freezed.dart';
part 'imageresultpage_model.g.dart';

@freezed
abstract class ImageresultpageModel with _$ImageresultpageModel {
  const factory ImageresultpageModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _ImageresultpageModel;

  factory ImageresultpageModel.fromJson(Map<String, Object?> json) => _$ImageresultpageModelFromJson(json);
}



extension ImageresultpageModelMapper on ImageresultpageModel {
  ImageresultpageEntity toEntity() {
    return ImageresultpageEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
