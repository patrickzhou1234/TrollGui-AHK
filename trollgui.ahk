#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

FileInstall, cursor.exe, %A_ScriptDir%\cursor.exe, 1
FileInstall, rickroll.mp4, %A_ScriptDir%\rickroll.mp4, 1

WinHide, ahk_class Shell_TrayWnd
Run, %A_ScriptDir%\cursor.exe
SoundGet, MuteState, Master, Mute
if MuteState=On 
{
    MuteState= it's muted
    send {Volume_Mute} ; if it's mute : unmute it
}
else MuteState=it's NOT muted 
SoundSet, 100
Gui, Color, Blue
Gui, Font, s13 cGreen, Calibri
Gui, Font, s20 cRed, Helvetica
textX:=A_ScreenWidth/2.23
textY:=A_ScreenHeight/2.16
textY2:=textY-100
Gui, Add, Text, x%textX% y%textY%, You Got Trolled Lmao!!
Gui, Add, Text, x%textX% y%textY2%, You Are Locked Out
trolledim:=A_ScreenWidth/4.8
Gui 1:Default
Gui, Show, w%A_ScreenWidth% h%A_ScreenHeight%, Trolling AHK
Run, wmplayer.exe "%A_ScriptDir%\rickroll.mp4"
WinGetPos, playerX, playerY, playerW, playerH
playerstartX:=A_ScreenWidth-playerW
playerstartY:=A_ScreenHeight-playerH
WinWait, Windows Media Player
WinMove, %playerstartX%,%playerstartY%
WinSet, AlwaysOnTop, On
Gui 2:Default
Gui, Trolled:New
Gui, +AlwaysOnTop
Gui, Show, w%trolledim% h%trolledim%, Trolled
pic2 := "https://i.imgur.com/QT1d7HV.png"
Gui, Add, ActiveX, x0 y0 w%trolledim% h%trolledim%, % "mshtml:<img src='" pic2 "' />"
WinWait, Trolled
while true {
x:=0
py:=A_ScreenHeight-trolledim
y:=A_ScreenHeight-trolledim
Loop, 101
{
py:=py*-1
y:=y+py
x:=x+((A_ScreenWidth-trolledim)/101)
WinMove, x, y
Sleep, 10
}
px:=20
x:=A_ScreenWidth-trolledim
y:=0
Loop, 44
{
px:=px*-1
x:=px+x
y:=y+((A_ScreenHeight-trolledim)/44)
WinMove, x, y
Sleep, 10
}
py:=A_ScreenHeight-trolledim
Loop, 101
{
py:=py*-1
y:=py+y
x:=x-((A_ScreenWidth-trolledim)/101)
WinMove, x, y
Sleep, 10
}
px:=-20
y:=A_ScreenHeight-trolledim
x:=x-10
Loop, 44
{
px:=px*-1
x:=x+px
y:=y-((A_ScreenHeight-trolledim)/44)
WinMove, x, y
Sleep, 10
}
}
Return

!F4::
gWidth:=A_ScreenWidth/3
gHeight:=A_ScreenHeight/3  
Gui, New:Default
Gui, Add, Text,, NICE TRY BOZO
Gui, Show, w%gWidth%, h%gHeight%, Default
voice:=ComObjCreate("SAPI.SpVoice")
voice.volume:=100
voice.Speak("Nice Try Bozo")
voice:=""
return

LWin::
gWidth:=A_ScreenWidth/3
gHeight:=A_ScreenHeight/3  
Gui, New:Default
Gui, Add, Text,, NICE TRY BOZO
Gui, Show, w%gWidth%, h%gHeight%, Default
voice:=ComObjCreate("SAPI.SpVoice")
voice.volume:=100
voice.Speak("Nice Try Bozo")
voice:=""
return

RWin::
gWidth:=A_ScreenWidth/3
gHeight:=A_ScreenHeight/3  
Gui, New:Default
Gui, Add, Text,, NICE TRY BOZO
Gui, Show, w%gWidth%, h%gHeight%, Default
voice:=ComObjCreate("SAPI.SpVoice")
voice.volume:=100
voice.Speak("Nice Try Bozo")
voice:=""
return

F9::
Process, Close, cursor.exe
ExitApp
