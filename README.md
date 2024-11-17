# Soundmodem Config Switcher

[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/aosterwyk/soundmodem-config-switcher?sort=semver)](https://github.com/aosterwyk/soundmodem-config-switcher/releases) [![GitHub last commit](https://img.shields.io/github/last-commit/aosterwyk/soundmodem-config-switcher)](https://github.com/aosterwyk/soundmodem-config-switcher/commits/master) 

This script lists files named `soundmodem.ini.*` and renames them to `soundmodem.ini` making it easier to switch configs for [UZ7HO's soundmodem](http://uz7.ho.ua/packetradio.htm). 

This script and the repo owner are not associated with the soundmodem application. 

## Usage

- [Download](https://github.com/aosterwyk/soundmodem-config-switcher/releases/latest) the script (`switch-soundmodem-configs.ps1`) and move it to your soundmodem install directory.
- Create and rename different soundmodem configs to `soundmodem.ini.<config>` (ex: `soundmodem.ini.digirig`, `soundmodem.ini.ic705`, etc.)
- Run the script and select the config you want to use. 
    
NOTE: The script will **delete the existing soundmodem.ini** before copying the selected config. Make sure all configs are backed up before using this! 

## Support

Discord: `VariXx#8317`

[Check QRZ](https://www.qrz.com/db/kf0izw) for my email address. 

You can also email me on Winlink (KF0IZW) I don't check this daily and may not respond right away. 

## License
[Apache License 2.0](https://choosealicense.com/licenses/apache-2.0/)
