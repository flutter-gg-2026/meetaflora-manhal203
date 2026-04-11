import 'dart:io';
import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:plantify_ai/core/widgets/loading_widget.dart';
import 'package:plantify_ai/features/sub/image_ai/presentation/cubit/image_ai_cubit.dart';
import 'package:plantify_ai/features/sub/image_ai/presentation/cubit/image_ai_state.dart';

class ImageDescription extends StatelessWidget {
  final File image;

  const ImageDescription({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ImageAiCubit(GetIt.I.get())..analyzeImage(image),
      child: Scaffold(
        backgroundColor: const Color(0xFFE8F5E9),

        appBar: AppBar(
          title: Text("Plant Analysis", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 69, 117, 71),
        ),

        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AnyImageView(
                    imagePath: image.path,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "AI Plant Description",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1B5E20),
                  ),
                ),
              ),

              SizedBox(height: 12),

              Expanded(
                child: BlocBuilder<ImageAiCubit, ImageAiState>(
                  builder: (context, state) {
                    switch (state) {
                      case ImageAiLoadingState _:
                        return Center(child: LoadingWidget());

                      case ImageAiSuccessState _:
                        return Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: .05),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            child: Text(
                              state.text,
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.5,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF1B5E20),
                              ),
                            ),
                          ),
                        );

                      case ImageAiErrorState _:
                        return Center(child: Text(state.message));
                      default:
                        return SizedBox.shrink();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
