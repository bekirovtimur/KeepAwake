<p align="center">
  <img src="media/logo.png" alt="KeepAwake" width="200">
</p>

<h1 align="center">KeepAwake</h1>

<p align="center">A tiny Windows utility that keeps your computer awake during long-running tasks</p>

<p align="center">
  <a href="README.md">Русский</a> · <b>English</b>
</p>

## What it does

KeepAwake prevents your computer from going to sleep while long tasks are running — video rendering, copying files, downloads, compilation, and any other time-consuming job that must not be interrupted.

The script is written in [AutoIt v3](https://www.autoitscript.com) and works as follows:

- every second it checks the system idle time with the `_Timer_GetIdleTime()` function;
- if no keyboard or mouse input has been detected for **10 seconds**, the mouse cursor is nudged by 1 pixel and instantly returned to its place;
- this resets the Windows idle timer, so the system keeps considering the user active and never locks the screen or goes to sleep in the middle of your work.

## How to use

1. Download the build matching your OS: **Windows x86** or **Windows x64**.
2. Run `KeepAwake.exe`. No installation is required — the utility sits in the tray next to the clock and quietly works in the background.
3. To stop it, click the script's tray icon and close the script from the menu that opens.

## Download

Ready-to-use builds for **Windows x86** and **Windows x64** are published on the [Releases](https://github.com/bekirovtimur/KeepAwake/releases) page.

## Building from source

The full source code is a single file — `keepawake.au3`. Everyone is welcome to make changes and compile the script themselves:

1. Download and install [AutoIt v3](https://www.autoitscript.com) (the full installation includes the compiler).
2. Edit `keepawake.au3` as you like.
3. Compile it into a standalone executable with **Aut2Exe – Script to executable converter** — via the Start menu (*AutoIt v3 → Compile Script to .exe*), by right-clicking the `.au3` file in Explorer (*Compile Script*), or from the command line:

   ```
   Aut2Exe.exe /in keepawake.au3 /out KeepAwake_x64.exe /icon media\icon.ico /x64
   Aut2Exe.exe /in keepawake.au3 /out KeepAwake_x86.exe /icon media\icon.ico /x86
   ```

## Contributing

Everybody is welcome to modify the script and compile it themselves — or simply download the ready-made releases for x86 and x64 Windows. Bug reports and pull requests are welcome!

## Support the project

If you find this project useful and want to support the author or just say "thank you", you can do it via YooMoney:

**[Support via YooMoney](https://yoomoney.ru/to/410013756545159)**

Any support motivates further development. Thank you! ❤️
