Set shell = CreateObject("WScript.Shell")
cmd = "powershell -windowstyle hidden -command " & Chr(34) & _
"Add-Type -TypeDefinition @'" & vbCrLf & _
"using System;" & vbCrLf & _
"using System.Runtime.InteropServices;" & vbCrLf & _
"public class CursorControl {" & vbCrLf & _
"  [DllImport(""user32.dll"")]" & vbCrLf & _
"  public static extern int ShowCursor(bool bShow);" & vbCrLf & _
"}" & vbCrLf & _
"'@; [CursorControl]::ShowCursor($false); Start-Sleep -Seconds 9999999999999999999999999" & Chr(34)

shell.Run cmd, 0, False