import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/common_lib.dart';

part 'temperature_unit.g.dart';

@JsonEnum(alwaysCreate: true)
enum UnitType {
  metric,
  imperial;

  String localize(AppLocalizations l10n) => switch (this) {
        UnitType.metric => l10n.metric,
        UnitType.imperial => l10n.imperial,
      };

  factory UnitType.fromJson(String json) => values.firstWhere(
        (element) => element.toJson() == json,
        orElse: () => UnitType.metric,
      );

  String toJson() => _$UnitTypeEnumMap[this]!;
}
