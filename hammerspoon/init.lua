local bind = hs.hotkey.bind

function launchApp(mod, key, appName)
    bind(mod, key, function()
        hs.application.launchOrFocus(appName)
    end)
end

bind({"ctrl", "alt"}, "r", hs.reload)



launchApp("ctrl", "s", "Safari.app")
launchApp("ctrl", "n", "Notes.app")
launchApp("ctrl", "a", "App Store.app")
launchApp("ctrl", "t", "Iterm.app")
launchApp("ctrl", "d", "Discord.app")
launchApp("ctrl", "v", "Visual Studio Code.app")
launchApp("ctrl", "p", "System Preferences.app")
launchApp("ctrl", "m", "Music.app")

require("./window-manager")
require("./testing")

hs.alert("hammerspoon started")