#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode, Mouse, Screen
Loop,
{
    MouseMove, A_ScreenWidth/2, A_ScreenHeight/3
    Sleep, 10
    MouseMove, A_ScreenWidth/3, A_ScreenHeight/1.5
    Sleep, 10
    MouseMove, A_ScreenWidth/1.5, A_ScreenHeight/1.5
    Sleep, 10
}