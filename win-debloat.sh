# This script will be deprecated and removed in ~November 2023

cd "$(dirname "$0")"
shopt -s extglob

if ! [[ -d "Program Files" && -d "Windows/System32" ]]
then
    echo error: directory does not appear to be the root directory of a windows installation
    exit 1
fi

# rm -rf Program\ Files/WindowsApps/*
# rm -rf ProgramData/Packages/!("MicrosoftWindows.Client.CBS_cw5n1h2txyewy")
# rm -rf Users/*/AppData/Local/Microsoft/WindowsApps/!("MicrosoftWindows.Client.CBS_cw5n1h2txyewy")
# rm -rf Users/*/AppData/Local/Packages/!("Microsoft.Windows.ShellExperienceHost_cw5n1h2txyewy"|"windows.immersivecontrolpanel_cw5n1h2txyewy"|"MicrosoftWindows.Client.CBS_cw5n1h2txyewy")
# rm -rf Windows/SystemApps/!("ShellExperienceHost_cw5n1h2txyewy"|"Microsoft.UI.Xaml.CBS_8wekyb3d8bbwe"|"MicrosoftWindows.Client.CBS_cw5n1h2txyewy"|"MicrosoftWindows.Client.Core_cw5n1h2txyewy")
rm -f "Windows/System32/smartscreen.exe"
# rm -f "Windows/System32/mobsync.exe"

echo info: done

exit 0
