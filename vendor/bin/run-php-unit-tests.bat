@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/../wp-cli/wp-cli-tests/bin/run-php-unit-tests
sh "%BIN_TARGET%" %*
