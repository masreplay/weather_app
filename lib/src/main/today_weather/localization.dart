import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';

extension AppLocalizationsX on AppLocalizations {
  String speed(UnitType unitType, double Function(UnitType unit) callback) =>
      speedUnit(callback(unitType), unitType.name);

  // ignore: unused_element
  String pressure(UnitType unitType, double Function(UnitType unit) callback) =>
      pressureUnit(callback(unitType), unitType.name);
  
  // ignore: unused_element
  String temperature(UnitType unitType, double Function(UnitType unit) callback) =>
      temperatureUnit(callback(unitType), unitType.name);
}
