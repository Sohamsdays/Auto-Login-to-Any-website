@if (@CodeSection == @Batch) @then
@echo off
set SendKeys=CScript //nologo //E:JScript "%~F0"
set url="https://www.gmail.com"    // Any URL you want to login to
set timeout=10
start FIREFOX "" %url%
timeout %timeout%
%SendKeys% "{TAB}"                  // open the website and check how many times you need to press tab 
%SendKeys% "{TAB}"  		    // to reach to the username tab (username tab gets active)

%SendKeys% "your_username"          // Enter your username (include it within the quotes) 
%SendKeys% "{TAB}"		    // Press tab to get to the password area
%SendKeys% "your_password"          // Write your password 
%SendKeys% "{ENTER}"	            // Press enter
pause
goto :EOF
@end
// JScript section
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
