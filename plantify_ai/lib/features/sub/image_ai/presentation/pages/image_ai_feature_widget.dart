import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:plantify_ai/core/navigation/routers.dart';

class ImageAiFeatureWidget extends StatelessWidget {
  const ImageAiFeatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final picker = ImagePicker();

    return ElevatedButton.icon(
      onPressed: () async {
        final img = await picker.pickImage(source: ImageSource.camera);

        if (img == null) return;

        context.push(Routes.imagedescription, extra: File(img.path));
      },

      icon: const Icon(Icons.camera_alt_rounded),

      label: const Text("Scan a Plant"),

      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 69, 117, 71),
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
