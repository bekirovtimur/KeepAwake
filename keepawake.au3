#include <Timers.au3>

Local $iIdleThreshold = 10000
Local $iPollInterval = 1000

While 1
    Sleep($iPollInterval)

    If _Timer_GetIdleTime() > $iIdleThreshold Then
        Local $aPos = MouseGetPos()
        MouseMove($aPos[0] + 1, $aPos[1] + 1, 0)
        Sleep(50)
        MouseMove($aPos[0], $aPos[1], 0)
    EndIf
WEnd
