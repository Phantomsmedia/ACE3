/*
 * Author: KoffeinFlummi
 * Checks if a unit is in a medical vehicle.
 *
 * Arguments:
 * 0: unit to be checked <OBJECT>
 *
 * Return Value:
 * Is unit in medical vehicle? <BOOL>
 *
 * Public: Yes
 */

private ["_unit", "_vehicle"];

_unit = _this select 0;
_vehicle = vehicle _unit;

if (_unit == _vehicle) exitWith {false};
if (_unit in [driver _vehicle, gunner _vehicle, commander _vehicle]) exitWith {false};

// @todo: variable names standard?
_vehicle getVariable [QGVAR(isMedic), getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "attendant") == 1]
