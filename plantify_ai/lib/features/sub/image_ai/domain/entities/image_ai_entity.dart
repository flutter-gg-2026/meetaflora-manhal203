import 'package:equatable/equatable.dart';

class ImageAiEntity extends Equatable {
  final String description;

  const ImageAiEntity({required this.description});

  @override
  List<Object?> get props => [description];
}
