import '../../../common/base/base_screen.dart';
import '../../../core/di/dependency_provider.dart';
import '../../../domain/controller/home_controller.dart';
import 'home_layout.dart';

class HomeScreen extends BaseScreen<HomeController, HomeLayout> {
  @override
  HomeController get controller => HomeController(get());

  @override
  HomeLayout get layout => HomeLayout();
}
