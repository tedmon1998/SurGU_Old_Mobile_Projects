import '../../data/model/local/dummy_entity.dart';

class Dummy {
  final String id;
  final String value;
  final String iconUrl;

  Dummy({
    required this.id,
    required this.value,
    required this.iconUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Dummy && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  DummyEntity toDummyEntity() => DummyEntity(id: id, value: value);

  @override
  String toString() {
    return 'Dummy{id: $id, value: $value}';
  }
}
