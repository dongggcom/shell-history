:: Confirms that the batch file works correctly in Windows Terminal / Command Prompt.
:: This batch file is used to visually test to see if `shell-history` works, rather
:: than to act as a real, responsive "test case" (as such, `ava` is not used here).

@echo off

echo Print entire history
node --print "const history = require('.'); history()"
pause
echo.
echo Print last command (which will be "test_win.bat")
node --print "const history = require('.'); let h = history(); h[h.length - 1]"
pause
