' 데스크톱에 ZOLT AI Enterprise 바로가기 생성
On Error Resume Next
Set WshShell = CreateObject("WScript.Shell")
TargetPath = WScript.Arguments(0)
WorkDir = WScript.Arguments(1)
If TargetPath = "" Or WorkDir = "" Then
  WScript.Echo "ERR: 인수가 필요합니다."
  WScript.Quit 1
End If

' Windows가 사용하는 실제 바탕화면 경로 (OneDrive 포함)
Desktop = WshShell.SpecialFolders("Desktop")
LnkPath = Desktop & "\ZOLT AI Enterprise.lnk"

Set sc = WshShell.CreateShortcut(LnkPath)
sc.TargetPath = TargetPath
sc.WorkingDirectory = WorkDir
sc.Description = "ZOLT AI Enterprise"
sc.Save

If Err.Number <> 0 Then
  WScript.Echo "ERR: " & Err.Description
  WScript.Quit 1
End If
WScript.Echo "OK: " & LnkPath
WScript.Quit 0
