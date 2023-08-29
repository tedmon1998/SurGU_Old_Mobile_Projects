import 'package:json_annotation/json_annotation.dart';

import '../../../common/extension/list_extension.dart';
import '../../../domain/model/dummy.dart';

part 'dummy_dto.g.dart';

@JsonSerializable()
class DummyDto {
  static const _paramIconUrl = 'icon_url';

  final String id;
  final String value;
  @JsonKey(name: _paramIconUrl)
  final String? iconUrl;

  DummyDto({
    required this.id,
    required this.value,
    this.iconUrl,
  });

  factory DummyDto.fromJson(Map<String, dynamic> data) => _$DummyDtoFromJson(data);

  static List<DummyDto> fromJsonList(List<dynamic> jsonList) {
    return jsonList.mapToList(
      (dynamic dto) => _$DummyDtoFromJson(dto as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => _$DummyDtoToJson(this);

  Dummy toDummy() => Dummy(id: id, value: value, iconUrl: iconUrl ?? '');
}
