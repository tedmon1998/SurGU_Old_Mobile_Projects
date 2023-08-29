import 'package:hive_flutter/adapters.dart';

import '../../model/local/dummy_entity.dart';

class Database {
  static const dummyEntityTypeId = 0;

  static const _keyDummy = 'key_dummy';

  static const _boxNameDummy = 'dummy_box';

  static final _boxDummy = Hive.openBox<DummyEntity>(_boxNameDummy);

  Future<void> saveDummy(DummyEntity dummyEntity) async => (await _boxDummy).put(_keyDummy, dummyEntity);

  Future<DummyEntity?> loadDummy() async => (await _boxDummy).get(_keyDummy);
}
