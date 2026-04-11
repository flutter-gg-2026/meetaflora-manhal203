import 'package:equatable/equatable.dart';

abstract class ImageAiState extends Equatable {
  const ImageAiState();

  @override
  List<Object?> get props => [];
}

class ImageAiInitialState extends ImageAiState {}

class ImageAiLoadingState extends ImageAiState {}

class ImageAiSuccessState extends ImageAiState {
  final String text;
  const ImageAiSuccessState(this.text);
}

class ImageAiErrorState extends ImageAiState {
  final String message;
  const ImageAiErrorState(this.message);
}
