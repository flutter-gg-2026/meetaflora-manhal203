import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantify_ai/features/sub/image_ai/domain/use_cases/image_ai_use_case.dart';
import 'dart:io';
import 'package:plantify_ai/features/sub/image_ai/presentation/cubit/image_ai_state.dart';

class ImageAiCubit extends Cubit<ImageAiState> {
  final ImageAiUseCase _useCase;

  ImageAiCubit(this._useCase) : super(ImageAiInitialState());

  Future<void> analyzeImage(File file) async {
    emit(ImageAiLoadingState());
    final result = await _useCase.analyzeImage(file);

    result.when(
      (success) {
        emit(ImageAiSuccessState(success.description));
      },
      (error) {
        emit(ImageAiErrorState(error.message));
      },
    );
  }
}
