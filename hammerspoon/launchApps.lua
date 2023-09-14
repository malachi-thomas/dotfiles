function launchApp(mod, key, appName)
  hs.hotkey.bind(mod, key, function()
      hs.application.launchOrFocus(appName)
  end)
end


launchApp({"alt", "shift"}, "s", "Safari.app")
launchApp({"alt", "shift"}, "n", "Notes.app")
launchApp({"alt", "shift"}, "a", "App Store.app")
launchApp({"alt", "shift"}, "f", "Finder")
launchApp({"alt", "shift"}, "c", "Google Chrome.app")
-- launchApp({"alt", "shift"}, "t", "Iterm Rosetta.app")
launchApp({"alt", "shift"}, "t", "Iterm.app")
launchApp({"alt", "shift"}, "d", "Drafts.app")
launchApp({"alt", "shift"}, "v", "Visual Studio Code.app")
launchApp({"alt", "shift"}, "p", "System Preferences.app")
-- launchApp({"alt", "shift"}, "p", "Plover.app")
launchApp({"alt", "shift"}, "m", "Music.app")
launchApp({"alt", "shift"}, "x", "Xcode.app")
launchApp({"alt", "shift"}, "o", "Obsidian.app")
launchApp({"alt", "shift"}, "d", "Discord.app")

