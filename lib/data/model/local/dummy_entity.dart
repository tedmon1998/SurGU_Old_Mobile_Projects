import 'package:hive_flutter/hive_flutter.dart';

import '../../source/local/database.dart';

part 'dummy_entity.g.dart';

const _indexDummyId = 0;
const _indexDummyValue = 1;

@HiveType(typeId: Database.dummyEntityTypeId)
class DummyEntity {
  @HiveField(_indexDummyId)
  final String id;
  @HiveField(_indexDummyValue)
  final String value;

  const DummyEntity({
    required this.id,
    required this.value,
  });
}
