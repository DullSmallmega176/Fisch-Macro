/**
 * @description: Function that returns roblox's window client position
 * @author SP
 **/
GetRobloxClientPos(HWND?) {
    global windowX, windowY, windowWidth, windowHeight
    if !IsSet(HWND)
        HWND := GetRobloxHWND()
    try
        WinGetClientPos &windowX, &windowY, &windowWidth, &windowHeight, "ahk_id " HWND
    catch TargetError
        return windowX := windowY := windowWidth := windowHeight := 0
    else
        return 1
}
/**
 * @description: Function for returning roblox's HWND
 * @author SP
 **/
GetRobloxHWND() {
    if HWND:=WinExist("Roblox ahk_exe RobloxPlayerBeta.exe")
        return HWND
    else if (WinExist("Roblox ahk_exe ApplicationFrameHost.exe")) {
        try
            HWND := ControlGetHwnd("ApplicationFrameInputSinkWindow1")
        catch TargetError
            HWND := 0
        return HWND
    }
    else
        return 0
}
/**
 * @description: Function made to activate roblox "focus"
 * @author dully176
 **/
ActivateRoblox() {
    if WinExist("Roblox ahk_exe RobloxPlayerBeta.exe") || WinExist("Roblox ahk_exe ApplicationFrameHost.exe")
        WinActivate(),x:=0
    return IsSet(x)?1:0
}