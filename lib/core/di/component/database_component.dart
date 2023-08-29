import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import '../../../data/model/local/dummy_entity.dart';
import '../../../data/source/local/database.dart';

Future<Database> initDatabase() async {
  Hive
    ..init((await getApplicationDocumentsDirectory()).path)
    ..registerAdapter(DummyEntityAdapter());
  return Database();
}
