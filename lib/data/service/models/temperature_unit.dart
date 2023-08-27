import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/common_lib.dart';

part 'temperature_unit.g.dart';

@JsonEnum(alwaysCreate: true)
enum UnitSystem {
  metric,
  imperial;

  String localize(AppLocalizations l10n) => switch (this) {
        UnitSystem.metric => l10n.metric,
        UnitSystem.imperial => l10n.imperial,
      };

  factory UnitSystem.fromJson(String json) => values.firstWhere(
        (element) => element.toJson() == json,
        orElse: () => UnitSystem.metric,
      );

  String toJson() => _$UnitSystemEnumMap[this]!;
}
