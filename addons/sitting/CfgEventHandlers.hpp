class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};

class Extended_PostInit_EventHandlers {
    class ADDON {
        clientInit = QUOTE(call COMPILE_FILE(XEH_clientInit));
    };
};

class Extended_Killed_EventHandlers {
    class CAManBase {
        class ADDON {
            killed = QUOTE(_this call DFUNC(handleInterrupt));
        };
    };
};
