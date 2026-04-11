import 'dart:convert';
import 'dart:io';
import 'dio_client.dart';
import 'api_endpoints.dart';

extension GeminiExtension on DioClient {
  Future<String> analyzeImage({
    required File file,
    required String apiKey,
  }) async {
    final bytes = await file.readAsBytes();
    final base64Image = base64Encode(bytes);

    final body = {
      "contents": [
        {
          "parts": [
            {
              "text":
                  "You are a plant expert. Identify the plant in the image and provide: common name, scientific name, short description, care tips (watering, sunlight, soil), and useful facts. Format the answer clearly as plain text only. Do not use any Markdown formatting such as *, **, #, or bullet symbols. Use simple section titles like: Common Name, Scientific Name, Description, Care Tips, Useful Facts. Keep the output clean and easy to read.",
            },
            {
              "inline_data": {"mime_type": "image/jpeg", "data": base64Image},
            },
          ],
        },
      ],
    };

    final response = await dio.post(
      "${ApiEndpoints.geminiVision}?key=$apiKey",
      data: body,
    );
    return response.data['candidates'][0]['content']['parts'][0]['text'];
  }
}
