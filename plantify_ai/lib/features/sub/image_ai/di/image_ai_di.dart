import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'image_ai_di.config.dart'; 

@InjectableInit(
  initializerName: 'initImageAiSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/image_ai'],
)
void configureImageAiSub(GetIt getIt) {
  getIt.initImageAiSub();
}
