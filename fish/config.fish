starship init fish | source

function fish_greeting
end

if status --is-login
    fastfetch
end

fish_add_path /home/guilherme/.spicetify

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
export PATH="$HOME/.local/bin:$PATH"

# Android SDK
set --export ANDROID_HOME "$HOME/Android/Sdk"
set --export ANDROID_SDK_ROOT "$ANDROID_HOME"
set --export JAVA_HOME "$HOME/BurpSuiteCommunity/jre"
set --export ANDROID_EMULATOR_HOME "$HOME/.config/.android"
set --export ANDROID_AVD_HOME "$ANDROID_EMULATOR_HOME/avd"
if test -d "$ANDROID_HOME"
    fish_add_path "$ANDROID_HOME/emulator" "$ANDROID_HOME/platform-tools" "$ANDROID_HOME/cmdline-tools/latest/bin"
end
if test -d "$JAVA_HOME"
    fish_add_path "$JAVA_HOME/bin"
end
