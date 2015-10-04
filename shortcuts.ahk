SetTitleMatchMode, 2

^q::Send !{F4}
#^w::Send ^{F4}

#w::Run C:\Program Files\Microsoft Office\Office12\Winword
#e::Run explorer
#t::Run C:\Program Files\Mozilla Thunderbird\Thunderbird
#i::Run C:\Program Files\iTunes\iTunes
;#o::Run C:\Program Files\Microsoft Office\Office12\Outlook
#o::Run C:\Program Files\Opera\Opera
#p::
Run C:\Program Files\PuTTY\PuTTY @falcon
WinWait, PuTTY
WinMaximize
return

;#s::Run cmd
#s::Run C:\Program Files\Safari\Safari
#f::Run C:\Program Files\Mozilla Firefox\Firefox
;#f::Run C:\program files\Mozilla Firefox 3 Beta 5\firefox
EnvGet, LOCALAPPDATA, LOCALAPPDATA
Chrome := LOCALAPPDATA . "Google\Chrome\Application\chrome.exe"
#g::Run Chrome

#z::Run C:\Cygwin\cygwin.bat
#x::Run C:\Program Files\Microsoft Office\Office12\Excel
#c::Run calc
#v::Run C:\Program Files\Microsoft Visual Studio 2005\Common\Bin\MSDEV
#b::Run C:\Cygwin\cygwin.bat
#n::Run notepad2
#m::Run C:\Program Files\Microsoft Office\Office12\Outlook /select "outlook://Home/Search Folders/Unread"

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

; Make Ctrl+PageUp and Ctrl+PageDown work in Safari
#ifWinActive ahk_class {1C03B488-D53B-4a81-97F8-754559640193}
^PgUp::Send ^+[
#ifWinActive ahk_class {1C03B488-D53B-4a81-97F8-754559640193}
^PgDn::Send ^+]

; Left-handed mouse (Windows keeps forgetting my settings)
;LButton::Send {RButton}
;RButton::Send {LButton}

; Scroll wheel sends PageUp and PageDown
WheelDown::Send {PgDn}
WheelUp::Send {PgUp}
