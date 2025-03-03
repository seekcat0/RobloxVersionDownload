@echo off

where bun >nul 2>nul
if %errorlevel%==0 (
    bun pm ls
    if %errorlevel%==1 ( CALL bun install )
    echo Bun was founds
    timeout 2
    cls
    CALL bun run .
) else (
    where node >nul 2>nul
    if %errorlevel%==0 (
        npm list
        if %errorlevel%==1 ( CALL npm install )
        echo Node was founds
        timeout 2
        cls
        CALL node scripts.cjs
    ) else (
        echo Your doesn't have node, please install node. [NOTE]: Use bun to run extract faster, expects your internet speed.
    )
)
