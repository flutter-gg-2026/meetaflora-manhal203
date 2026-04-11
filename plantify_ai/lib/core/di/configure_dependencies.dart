import 'package:get_it/get_it.dart';
import 'package:plantify_ai/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:plantify_ai/features/home/di/home_di.dart';
import 'package:plantify_ai/features/sub/image_ai/di/image_ai_di.dart';
import 'package:plantify_ai/features/image_description/di/imageresultpage_di.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  generateForDir: ['lib/core'],
)
Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
  configureHome(getIt);
  configureImageAiSub(getIt);
    configureImageresultpage(getIt);
}
