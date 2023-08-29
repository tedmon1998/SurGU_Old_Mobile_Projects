import '../../common/base/base_controller.dart';
import '../../data/repository/dummy_repository.dart';
import '../model/dummy.dart';

class HomeController extends BaseController {
  final DummyRepository _dummyRepository;

  String dummyValue = '';
  int screenIndex = 0;

  HomeController(
    this._dummyRepository,
  );

  void loadScreenData() {
    execute<Dummy>(
      _dummyRepository.getDummy(),
      retry: loadScreenData,
      onSuccess: (dummy) {
        dummyValue = dummy.value;
        notifyListeners();
      },
    );
  }

  void changeScreenIndex(int screenIndex) {
    this.screenIndex = screenIndex;
    notifyListeners();
  }
}
