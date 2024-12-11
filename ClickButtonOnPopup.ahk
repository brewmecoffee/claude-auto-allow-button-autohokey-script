#Persistent
SetTitleMatchMode, 2
SetWorkingDir %A_ScriptDir%

; Add the path to your button screenshot image here
ImagePath := "C:\Users\admin\Documents\scripts\images\allow_for_this_chat.png"

; Check for the button every 2 seconds
SetTimer, CheckForButton, 2000
return

CheckForButton:
    CoordMode, Pixel, Screen
    CoordMode, Mouse, Screen

    ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %ImagePath%

    if (ErrorLevel = 0) {
        CenterOffsetX := 82  ; Half of 163 (rounded)
        CenterOffsetY := 18  ; Half of 36

        CenterX := FoundX + CenterOffsetX
        CenterY := FoundY + CenterOffsetY

        ; Store the current mouse position
        MouseGetPos, OriginalX, OriginalY

        ; Move the mouse to the target center position instantly
        MouseMove, %CenterX%, %CenterY%, 0
        Sleep, 100  ; Brief pause to ensure the mouse move is registered

        ; Move the mouse away by 20 pixels right and 20 pixels down
        MouseMove, %CenterX% + 20, %CenterY% + 20, 0
        Sleep, 100  ; Brief pause to ensure the mouse move is registered

        ; Move the mouse back to the target center position
        MouseMove, %CenterX%, %CenterY%, 0
        Sleep, 100  ; Brief pause to ensure the mouse move is registered

        ; Perform the click at the target position
        Click, %CenterX%, %CenterY%

        ; Optionally, move the mouse back to its original position to minimize disruption
        MouseMove, %OriginalX%, %OriginalY%, 0
    }
return
