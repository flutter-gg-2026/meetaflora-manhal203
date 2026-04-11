import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantify_ai/features/image_description/domain/use_cases/imageresultpage_use_case.dart';
import 'package:plantify_ai/features/image_description/presentation/cubit/imageresultpage_state.dart';

class ImageresultpageCubit extends Cubit<ImageresultpageState> {
  final ImageresultpageUseCase _imageresultpageUseCase;

  ImageresultpageCubit(this._imageresultpageUseCase) : super(ImageresultpageInitialState());

  Future<void> getImageresultpageMethod() async {
    final result = await _imageresultpageUseCase.getImageresultpage();
    result.when(
      (success) {
        //here is when success result
      },
      (whenError) {
       //here is when error result
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
