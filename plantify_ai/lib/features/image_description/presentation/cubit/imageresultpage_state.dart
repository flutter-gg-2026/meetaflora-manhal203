import 'package:equatable/equatable.dart';

abstract class ImageresultpageState extends Equatable {
  const ImageresultpageState();

  @override
  List<Object?> get props => [];
}

class ImageresultpageInitialState extends ImageresultpageState {}
class ImageresultpageSuccessState extends ImageresultpageState {}

class ImageresultpageErrorState extends ImageresultpageState {
  final String message;
  const ImageresultpageErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

