local function newWindowPosition(x, y, w, h)
  hs.grid.set(hs.window.frontmostWindow(), hs.geometry.unitrect(x, y, w, h))
end

local test = {}

local appWatcher = hs.application.watcher.new(function(name, event, app)
  if event == hs.application.watcher.launching then
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect.w == rect.h then
      newWindowPosition(rect.x, rect.y, rect.w / 2, rect.h)
    else
      newWindowPosition(rect.x, rect.y, rect.w, rect.h / 2)
    end
    test.x = hs.grid.get(hs.window.frontmostWindow()).x
    test.y = hs.grid.get(hs.window.frontmostWindow()).y
    test.w = hs.grid.get(hs.window.frontmostWindow()).w
    test.h = hs.grid.get(hs.window.frontmostWindow()).h
  end

  if event == hs.application.watcher.launched then
    if test.w == test.h then
        newWindowPosition((test.x + (test.w * 2)) / 2, 0, test.w, test.h)
    --else

    --end
  end
end)

-- hs.window.filter.default:subscribe(hs.window.filter.windowUnfocused, function(window, appName)
--   hs.alert(appName)
-- end)
--
-- hs.alert(hs.window.filter.default:getWindows())

-- hs.window.filter:setSortOrder(hs.window.sortByFocused)
appWatcher:start()