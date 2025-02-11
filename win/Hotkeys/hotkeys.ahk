#SingleInstance Force

; AutoHotKey Specific
<^>!R::Reload

; Window Management

; Close Window
^!W:: {
    WinClose "A"
}

global id := "A"

; Maximize Window
^#M::
{
    global id := WinWait("A")
    WinMaximize "A"
}
; Minimize Window
^#+M::
{
    global id := WinWait("A")
    WinMinimize "A"
}
; Minimise or Reactivate previously minimised window
^#+!M::
{
    if (WinGetMinMax(id) >= 0)
    {
        global id := WinWait("A")
        WinMinimize id
    }
    else
    {
        WinActivate id
    }
}
return

; Browser Management
^!+E::
{
    Run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
}
^!+1::
{
    Run 
    (
        "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
        " " 
        "https://msazure.visualstudio.com/One/_git/EngSys-MDA-DCR-Synthetics"
    )
}
^!+2::
{
    Run 
    (
        "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
        " " 
        "https://www.youtube.com/watch?v=yA41iunMG6A"
    )
}

; Application Management
^!+T::
{
    Run "pwsh.exe"
}
<^>!T::
{
    Run "pwsh.exe  -Command `"Start-Process pwsh.exe -Verb runAs`" "
}
^!+Y::
{
    Run "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\devenv.exe"
}
^!+D::
{
    Run "ms-teams.exe"
}
^!+O::
{
    Run "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
}
^!+N::
{
    Run "C:\Program Files\Microsoft Office\root\Office16\ONENOTE.EXE"
}