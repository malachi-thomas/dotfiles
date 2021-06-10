local bind = hs.hotkey.bind

function launchApp(mod, key, appName)
    hs.hotkey.bind(mod, key, function()
        hs.application.launchOrFocus(appName)
    end)
end

bind({"ctrl", "cmd"}, "r", hs.reload)
launchApp("ctrl", "s", "Safari.app")
launchApp("ctrl", "n", "Notes.app")
launchApp("ctrl", "a", "App Store.app")
launchApp("ctrl", "t", "Iterm.app")
launchApp("ctrl", "d", "Drafts.app")
launchApp("ctrl", "v", "Visual Studio Code.app")
launchApp("ctrl", "p", "System Preferences.app")
launchApp("ctrl", "m", "Music.app")
launchApp("ctrl", "x", "Xcode.app")
launchApp({"ctrl", "shift"}, "d", "Discord.app")

require("./window-manager")
require("./testing")
hs.alert("hammerspoon started")