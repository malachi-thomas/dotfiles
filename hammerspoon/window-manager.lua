local move = {"ctrl", "shift"}
local grow = {"ctrl", "cmd"}
local shrink = {"ctrl", "alt"}
local bind = hs.hotkey.bind
local gridMax = 12


hs.window.animationDuration=0.08
hs.grid.setMargins("0x0")
hs.grid.setGrid(gridMax .. "x" .. gridMax)
-- hs.grid.show()

function newWindowPosition(x, y, w, h)
    hs.grid.set(hs.window.frontmostWindow(), hs.geometry.unitrect(x, y, w, h))
end

function windowPositionToRect(position)
    if position == "top" then
        return {0, 0, 12, 6}
    elseif position == "bottom" then
        return {0, 6, 12, 6}
    elseif position == "left" then
        return {0, 0, 6, 12}
    elseif position == "right" then
        return {6, 0, 6, 12}
    elseif position == "top left" then
        return {0, 0, 6, 6}
    elseif position == "top right" then
        return {6, 0, 6, 6}
    elseif position == "bottom left" then
        return {0, 6, 6, 6}
    elseif position == "bottom right" then
        return {6, 6, 6, 6}
    elseif position == "fullscreen" then
        return {0, 0, 12, 12}
    end
end

function debug()
    local rect = hs.grid.get(hs.window.frontmostWindow())

    hs.alert(rect)
end
bind(move, "up", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect == hs.geometry.unitrect(windowPositionToRect("top")) then
        newWindowPosition(windowPositionToRect("fullscreen"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("left")) then
        newWindowPosition(windowPositionToRect("top left"))
     elseif rect == hs.geometry.unitrect(windowPositionToRect("right")) then
        newWindowPosition(windowPositionToRect("top right"))
    else
         newWindowPosition(windowPositionToRect("top"))
     end
    debug()
end)

bind(move, "down", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect == hs.geometry.unitrect(windowPositionToRect("left")) then
        newWindowPosition(windowPositionToRect("bottom left"))
     elseif rect == hs.geometry.unitrect(windowPositionToRect("right")) then
        newWindowPosition(windowPositionToRect("bottom right"))
    else
         newWindowPosition(windowPositionToRect("bottom"))
     end
    debug()
end)

bind(move, "left", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect == hs.geometry.unitrect(windowPositionToRect("top")) then
        newWindowPosition(windowPositionToRect("top left"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("bottom")) then
        newWindowPosition(windowPositionToRect("bottom left"))
    else
         newWindowPosition(windowPositionToRect("left"))
    end
    debug()
end)

bind(move, "right", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect == hs.geometry.unitrect(windowPositionToRect("top")) then
        newWindowPosition(windowPositionToRect("top right"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("bottom")) then
        newWindowPosition(windowPositionToRect("bottom right"))
    else
         newWindowPosition(windowPositionToRect("right"))
    end
    debug()
end)

bind(move, "c", function()
    hs.window.focusedWindow():centerOnScreen()
end)
