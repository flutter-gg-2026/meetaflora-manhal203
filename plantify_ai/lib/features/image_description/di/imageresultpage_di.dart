import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'imageresultpage_di.config.dart'; 

@InjectableInit(
  initializerName: 'initImageresultpage',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/imageresultpage'],
)
void configureImageresultpage(GetIt getIt) {
  getIt.initImageresultpage();
}
