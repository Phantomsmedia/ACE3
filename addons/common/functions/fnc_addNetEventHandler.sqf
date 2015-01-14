/*
 * Author: Nou
 *
 * Add a network event handler.
 *
 * Argument:
 * 0: Event name (string)
 * 1: Event code (code)
 *
 * Return value:
 * Event handler ID number (for use with fnc_removeNetEventHandler)
 */
#include "script_component.hpp"
private ["_eventName", "_eventCode", "_eventNames", "_eventFunctions", "_eventNameCount", "_eventIndex", "_eventFunctionCount"];
_eventName = _this select 0;
_eventCode = _this select 1;

_eventNames = GVAR(netEvents) select 0;
_eventFunctions = [];
_eventIndex = _eventNames find _eventName;
if(_eventIndex != -1) then {
    _eventFunctions = (GVAR(netEvents) select 1) select _eventIndex;
} else {
    _eventNameCount = count _eventNames;
    _eventNames set[_eventNameCount, _eventName];
    (GVAR(netEvents) select 1) set[_eventNameCount, _eventFunctions];
};

_eventFunctionCount = count _eventFunctions;
_eventFunctions set[_eventFunctionCount, _eventCode];

_eventFunctionCount;