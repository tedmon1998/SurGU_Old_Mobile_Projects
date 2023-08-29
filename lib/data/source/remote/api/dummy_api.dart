import '../../../model/remote/dummy_dto.dart';
import '../network_service.dart';

class DummyApi {
  static const _pathRandomJoke = 'random';

  final NetworkService _networkService;

  DummyApi(this._networkService);

  Future<DummyDto> getDummy() {
    return _networkService.request(
      _pathRandomJoke,
      HttpMethod.get,
      onParse: (response) => DummyDto.fromJson(
        response.data as Map<String, dynamic>,
      ),
    );
  }
}
