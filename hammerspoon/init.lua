local bind = hs.hotkey.bind
bind({"ctrl", "cmd"}, "r", hs.reload)

hs.window.filter.default:subscribe(hs.window.filter.windowFocused, function(window, appName)
    if appName == "System Preferences" then
        window:centerOnScreen()
    end
end)

require("launchApps")
require("window-manager")

hs.alert("hammerspoon started")
