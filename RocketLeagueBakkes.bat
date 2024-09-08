START "" "C:\Program Files\BakkesMod\BakkesMod.exe"
START "" "com.epicgames.launcher://apps/Sugar?action=launch&silent=true"

timeout 30

:check
timeout 5
tasklist | find "RocketLeague.exe"
if %errorlevel%==1 (taskkill /IM BakkesMod.exe) else (goto check) 