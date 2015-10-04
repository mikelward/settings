SetTitleMatchMode, 2

EnvGet, LOCALAPPDATA, LOCALAPPDATA
Chrome := LOCALAPPDATA . "Google\Chrome\Application\chrome.exe"

^q::Send !{F4}
;^w::Send ^{F4}

#e::Run explorer
#g::Run Chrome
#i::Run C:\Program Files\iTunes\iTunes
#m::Run C:\Windows\System32\cmd.exe /A /Q /K C:\msys64\msys2_shell.bat
#n::Run notepad2
#p::Run C:\Program Files\PuTTY\PuTTY

#Up::Send {Volume_Up}
;#Up::SoundSetWaveVolume, +20
#Down::Send {Volume_Down}
;#Down::SoundSetWaveVolume, -20
;#Left::Send {Media_Prev}\
#Left::SendMessage, 0x319, 0, 0xC0000, , iTunes
;#Right::Send {Media_Next}
#Right::SendMessage, 0x319, 0, 0xB0000, , iTunes

;#NumpadIns::Send {Media_Play_Pause}
;#Numpad0::Send {Media_Play_Pause}
#Ins::SendMessage, 0x319, 0, 0xE0000, , iTunes
#Del::Send {Volume_Mute}
#NumpadIns::SendMessage, 0x319, 0, 0xE0000, , iTunes
#Numpad0::SendMessage, 0x319, 0, 0xE0000, , iTunes

#NumpadDot::Send {Volume_Mute}
#NumpadDel::Send {Volume_Mute}

;::Send {Launch_Mail}
;::Send {Launch_Media}
;::Send {Browser_Home}

; Left-handed mouse (Windows keeps forgetting my settings)
;LButton::Send {RButton}
;RButton::Send {LButton}

; Scroll wheel sends PageUp and PageDown
WheelDown::Send {PgDn}
WheelUp::Send {PgUp}
