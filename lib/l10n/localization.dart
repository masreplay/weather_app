import 'package:weather_app/common_lib.dart';
import 'package:weather_app/data/service/models/temperature_unit.dart';

extension AppLocalizationsX on AppLocalizations {
  String speed(UnitSystem unitSystem, num Function(UnitSystem unit) callback) =>
      speedUnit(callback(unitSystem).toDouble(), unitSystem.name);

  // ignore: unused_element
  String pressure(
          UnitSystem unitSystem, num Function(UnitSystem unit) callback) =>
      pressureUnit(callback(unitSystem).toDouble(), unitSystem.name);

  // ignore: unused_element
  String temperature(
          UnitSystem unitSystem, num Function(UnitSystem unit) callback) =>
      temperatureUnit(callback(unitSystem).toDouble(), unitSystem.name);
}
