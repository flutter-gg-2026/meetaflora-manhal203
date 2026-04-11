import 'package:flutter/material.dart';
import 'package:plantify_ai/features/sub/image_ai/presentation/pages/image_ai_feature_widget.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F5E9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            Text(
              "Plantify AI",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 16),

            Text(
              "Capture a plant to identify it using AI\nGet plant details and care tips instantly",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19,
                height: 1.5,
                color: Color.fromARGB(255, 31, 88, 24),
              ),
            ),

            Spacer(),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ImageAiFeatureWidget(),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
