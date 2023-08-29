import '../../../common/base/base_screen.dart';
import '../../../domain/controller/detail_controller.dart';
import 'detail_layout.dart';

class DetailScreen extends BaseScreen<DetailController, DetailLayout> {
  final DetailScreenArguments arguments;

  DetailScreen(this.arguments);

  @override
  DetailController get controller => DetailController();

  @override
  DetailLayout get layout => DetailLayout(arguments.value);
}

class DetailScreenArguments {
  final String value;

  const DetailScreenArguments(this.value);
}
