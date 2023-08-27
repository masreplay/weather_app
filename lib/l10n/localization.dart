import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';

extension AppLocalizationsX on AppLocalizations {
  String speed(UnitType unitType, num Function(UnitType unit) callback) =>
      speedUnit(callback(unitType).toDouble(), unitType.name);

  // ignore: unused_element
  String pressure(UnitType unitType, num Function(UnitType unit) callback) =>
      pressureUnit(callback(unitType).toDouble(), unitType.name);

  // ignore: unused_element
  String temperature(UnitType unitType, num Function(UnitType unit) callback) =>
      temperatureUnit(callback(unitType).toDouble(), unitType.name);
}
