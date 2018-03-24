# Systemd

## Paths
### system
`/etc/systemd/system/`

### user
`/etc/systemd/user/` or `$HOME/.config/systemd/user`

## Variables
"%n"|Full unit name| 
"%N"|Unescaped full unit name|Same as "%n", but with escaping undone. This undoes the escaping used when generating unit names from arbitrary strings (see above).
"%p"|Prefix name|For instantiated units, this refers to the string before the "@" character of the unit name. For non-instantiated units, this refers to the name of the unit with the type suffix removed.
"%P"|Unescaped prefix name|Same as "%p", but with escaping undone
"%i"|Instance name|For instantiated units: this is the string between the "@" character and the suffix of the unit name.
"%I"|Unescaped instance name|Same as "%i", but with escaping undone
"%f"|Unescaped filename|This is either the unescaped instance name (if applicable) with / prepended (if applicable), or the unescaped prefix name prepended with /. This implements unescaping according to the rules for escaping absolute file system paths discussed above.
"%t"|Runtime directory root|This is either /run (for the system manager) or the path "$XDG_RUNTIME_DIR" resolves to (for user managers).
"%S"|State directory root|This is either /var/lib (for the system manager) or the path "$XDG_CONFIG_HOME" resolves to (for user managers).
"%C"|Cache directory root|This is either /var/cache (for the system manager) or the path "$XDG_CACHE_HOME" resolves to (for user managers).
"%L"|Log directory root|This is either /var/log (for the system manager) or the path "$XDG_CONFIG_HOME" resolves to with /log appended (for user managers).
"%u"|User name|This is the name of the user running the service manager instance. In case of the system manager this resolves to "root".
"%U"|User UID|This is the numeric UID of the user running the service manager instance. In case of the system manager this resolves to "0".
"%h"|User home directory|This is the home directory of the user running the service manager instance. In case of the system manager this resolves to "/root".
"%s"|User shell|This is the shell of the user running the service manager instance. In case of the system manager this resolves to "/bin/sh".
"%m"|Machine ID|The machine ID of the running system, formatted as string. See machine-id(5) for more information.
"%b"|Boot ID|The boot ID of the running system, formatted as string. See random(4) for more information.
"%H"|Host name|The hostname of the running system at the point in time the unit configuration is loaded.
"%v"|Kernel release|Identical to uname -r output
"%%"|Single percent sign|Use "%%" in place of "%" to specify a single percent sign.
