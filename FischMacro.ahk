#MaxThreads 255
#Requires AutoHotkey v2.0
#SingleInstance Force
CoordMode "Mouse", "Screen"
CoordMode "Pixel", "Screen"
CoordMode "ToolTip", "Screen"
SendMode "Event"
#Include "%A_ScriptDir%\lib"
#Include "Gdip_All.ahk"
#Include "Gdip_ImageSearch.ahk"
#Include "Roblox.ahk"
pToken := Gdip_Startup()
shake := Gdip_BitmapFromBase64("iVBORw0KGgoAAAANSUhEUgAAAFUAAAAVCAYAAAA3raI2AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAYdEVYdFNvZnR3YXJlAFBhaW50Lk5FVCA1LjEuMvu8A7YAAAC2ZVhJZklJKgAIAAAABQAaAQUAAQAAAEoAAAAbAQUAAQAAAFIAAAAoAQMAAQAAAAIAAAAxAQIAEAAAAFoAAABphwQAAQAAAGoAAAAAAAAAYAAAAAEAAABgAAAAAQAAAFBhaW50Lk5FVCA1LjEuMgADAACQBwAEAAAAMDIzMAGgAwABAAAAAQAAAAWgBAABAAAAlAAAAAAAAAACAAEAAgAEAAAAUjk4AAIABwAEAAAAMDEwMAAAAADp1fY4ytpsegAAAxBJREFUWEfNmUtv2kAQgHkpxzRS+gNya5QLUnpJf0XzS9MAFYXmAoWWHngmVWJLKQopD4EaXglgnlOPWSpwvevdxW7yHWAWz453xjP7MB4zZ2cfoFqtwmQygV6vB8qNAuQSk3qtzqW3DugQkQtR/VqtJqQ/HA4t9dEOL6TLknAoAvf3v6iDwCCHwx+p1+t1d4OqKgoUi0WIhMPcfWp6chDRlvl8TvdN8OH85fr62rajoqhUHdGsQESCOh6PDV1N07j7YMURkclisWDqifrmww907ujoyGv8wuDw8A1Vx7bzlnxNp43vdrttfPPAMyZ8WD6fz/nhi2QMDZkS4b2veWpJJhJc/ewytdPuQOxTzNaWTBW++KCa9Vjz3zqsoFYqFSiVSlx2pMr/pVMqFom0ZDAYEEmOfD4PgUDAEwwG3Z21eLOGhluZ2ut2LXVwJ0BEKlaZGo1GYTqdCo1VqvyR0Pk5+gjfMxkpA24FlaZjt2IjVkHFqYPnvutIl//701Mvsre3Zzhyw7HFWgeVjdEKsOxJJxQKgb7VI61N9I06kfjBB+H3+73ZbNZze3sr5h8HRJXOxecLwEF0KeVnRqZE7AZityctl38yr69nqjmzeTJ9Ra0uWf4s8DTV7bCD60ZQt72OQc3lsrA6OJh5fOxzjdmV1X9nZ8erKIrQ092WZDIBqqqQljWj0YhIdI6P33ri8RhpbaJv+on0jKiqCs1m0zKwMiXCyrTVgmJHq9Wi2sBMxe0TaVrCkyjSqz8v6AgRN3C6/Gkla4Zlw2r1N3N3dweZzDemnivl/78pFAoQj8dJi43uMJHkODg48J6cvCOtZ4KWGU5mqujc3acsODyZiqRSX4x3yKT5D66X/8PDb8sbOBnUfr8nZItmhzeoCOt9gnD5dzod+HF1xdVJX21hf/+1q+flcrkMu7uvhO6h6LuESCQi5LgZPBTQ3vxLkUqnYDabMQ0+PT0xrzuVqbSss8NqYRPJVIR20Nm6/C8vL41tCr50wP+o8vkcl0GngtpoNKQcsLIlGlTEyg76xoumafAHD3djcXIaSt8AAAAASUVORK5CYII=")
bobber := Gdip_BitmapFromBase64("iVBORw0KGgoAAAANSUhEUgAAAAIAAAAPCAYAAADOKB76AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAYdEVYdFNvZnR3YXJlAFBhaW50Lk5FVCA1LjEuMvu8A7YAAAC2ZVhJZklJKgAIAAAABQAaAQUAAQAAAEoAAAAbAQUAAQAAAFIAAAAoAQMAAQAAAAIAAAAxAQIAEAAAAFoAAABphwQAAQAAAGoAAAAAAAAAYAAAAAEAAABgAAAAAQAAAFBhaW50Lk5FVCA1LjEuMgADAACQBwAEAAAAMDIzMAGgAwABAAAAAQAAAAWgBAABAAAAlAAAAAAAAAACAAEAAgAEAAAAUjk4AAIABwAEAAAAMDEwMAAAAADp1fY4ytpsegAAABhJREFUGFdjdPaO/s8ABEwgAgQGgMHAAAAD8QIGlEc98gAAAABJRU5ErkJggg==")
edge := Gdip_BitmapFromBase64("iVBORw0KGgoAAAANSUhEUgAAAAIAAAAMCAYAAABIvGxUAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAYdEVYdFNvZnR3YXJlAFBhaW50Lk5FVCA1LjEuMvu8A7YAAAC2ZVhJZklJKgAIAAAABQAaAQUAAQAAAEoAAAAbAQUAAQAAAFIAAAAoAQMAAQAAAAIAAAAxAQIAEAAAAFoAAABphwQAAQAAAGoAAAAAAAAAYAAAAAEAAABgAAAAAQAAAFBhaW50Lk5FVCA1LjEuMgADAACQBwAEAAAAMDIzMAGgAwABAAAAAQAAAAWgBAABAAAAlAAAAAAAAAACAAEAAgAEAAAAUjk4AAIABwAEAAAAMDEwMAAAAADp1fY4ytpsegAAABZJREFUGFdj/A8EDEDABCJAgFYMBgYAqeUEFFJq4aAAAAAASUVORK5CYII=")
F1:: {
    static x:=0
    x^=1
    SetTimer(ClickShake, x ? 1:0)
}
F2::Reload
F3::ExitApp
AutoReel() { ; Not Finished
    static oldX:=0
    GetRobloxClientPos(hwnd:=GetRobloxHWND())
    xPos:=windowX+0.298*windowWidth+.12
    yPos:=windowY+.856*windowHeight-((0.01558*windowWidth+1.1)/2)
    xWidth:=0.403125*windowWidth+2
    pBMScreen:=Gdip_BitmapFromScreen(xPos "|" yPos-20 "|" xWidth "|30")
    if (Gdip_ImageSearch(pBMScreen, bobber, &loc, , , , ,2)) {
        Gdip_DisposeImage(pBMScreen)
        x:=SubStr(loc, 1, InStr(loc, ",")-1)+xPos
        oldX:=x
        barLocation:=MiddleOfBar()
        if barLocation:=MiddleOfBar() {
            weight:=-((((barLocation-xPos)/xWidth)*200-100)-(((x-xPos)/xWidth)*200-100))
        }
        else
            weight:=-(((((xWidth/2)/xWidth)*200-100))-((((x-xPos)/xWidth)*200-100)))
        if (weight > -5 && weight < 5) ; middle
            Click("down"), Sleep(50), Click("up")
        if (weight > -15 && weight < -5) ; small left
            Click("up"), Sleep(150), Click("down")
        if (weight < -15) ; large left
            Click("up"), Sleep(200), Click("down")
        if (weight < 15 && weight > 5) ; small right
            Click("down"), Sleep(200), Click("up")
        if (weight > 15) ; large right
            Click("down"), Sleep(300), Click("up")
        return 1
    }
    Gdip_DisposeImage(pBMScreen)
    return 0
}
AutoCast() {
    return 0
}
MiddleOfBar() {
    static startBar:=0, endBar:=0, y:=0
    GetRobloxClientPos(hwnd:=GetRobloxHWND())
    xPos:=windowX+0.298*windowWidth+.12
    yPos:=windowY+.856*windowHeight-((0.01558*windowWidth+1.1)/2)
    xWidth:=0.403125*windowWidth+2
    pBMScreen:=Gdip_BitmapFromScreen(xPos "|" yPos-20 "|" xWidth "|30")
    ; math can be done here to find the edge, impractical
    if (Gdip_ImageSearch(pBMScreen, edge, &loc, , , , , 10)) {
        startBar:=SubStr(loc, 1, InStr(loc, ",")-1)
    }
    if (Gdip_ImageSearch(pBMScreen, edge, &loc, , , , , 10, , 3))
        endBar:=SubStr(loc, 1, InStr(loc, ",")-1)
    Gdip_DisposeImage(pBMScreen)
    if startBar && endBar
        return xPos+((startBar+endBar)/2)
    return 0
}
ClickShake() { ; only [any width]x1080
    static prevCord:=0
    GetRobloxClientPos(hwnd:=GetRobloxHWND())
    pBMScreen:=Gdip_BitmapFromScreen(windowX "|" windowY "|" windowWidth "|" windowHeight)
    if (Gdip_ImageSearch(pBMScreen, shake, &loc, , , , ,15)) {
        if !(loc=prevCord)
            MouseMove(SubStr(loc, 1, InStr(loc, ",")-1)+windowX+40, SubStr(loc, InStr(loc, ",")+1)+windowY+10),Click(),Sleep(300)
        prevCord:=loc
    }else if !(AutoReel())
        Sleep(100)
    Gdip_DisposeImage(pBMScreen)
}
