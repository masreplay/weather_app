import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/common_lib.dart';

part 'temperature_unit.g.dart';

@JsonEnum(alwaysCreate: true)
enum TemperatureUnit {
  celsius,
  fahrenheit;

  String localize(AppLocalizations l10n) => switch (this) {
        TemperatureUnit.celsius => l10n.celsius,
        TemperatureUnit.fahrenheit => l10n.fahrenheit,
      };

  factory TemperatureUnit.fromJson(String json) => values.firstWhere(
        (element) => element.toJson() == json,
        orElse: () => TemperatureUnit.celsius,
      );

  String toJson() => _$TemperatureUnitEnumMap[this]!;
}
