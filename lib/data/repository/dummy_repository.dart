import '../../data/source/remote/api/dummy_api.dart';
import '../../domain/model/dummy.dart';

class DummyRepository {
  final DummyApi _api;

  DummyRepository(
    this._api,
  );

  Future<Dummy> getDummy() async {
    final dummyDto = await _api.getDummy();
    return dummyDto.toDummy();
  }
}
