local focus = {"ctrl", "shift"}
local move = {"ctrl", "cmd"}
local float = {"ctrl", "alt"}
local grow = {"ctrl", "shift", "cmd"}
local shrink = {"ctrl", "shift", "alt"}

local bind = hs.hotkey.bind
local gridMax = 12

hs.window.animationDuration=0
hs.grid.setMargins("0x0")
hs.grid.setGrid(gridMax .. "x" .. gridMax)

local function newWindowPosition(x, y, w, h)
    hs.grid.set(hs.window.frontmostWindow(), hs.geometry.unitrect(x, y, w, h))
end

local function windowPositionToRect(position)
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

bind(move, "up", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect == hs.geometry.unitrect(windowPositionToRect("top")) then
        newWindowPosition(windowPositionToRect("fullscreen"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("left")) then
        newWindowPosition(windowPositionToRect("top left"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("right")) then
        newWindowPosition(windowPositionToRect("top right"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("bottom left")) then
        newWindowPosition(windowPositionToRect("top left"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("bottom right")) then
        newWindowPosition(windowPositionToRect("top right"))
    else
         newWindowPosition(windowPositionToRect("top"))
        end
end)

bind(move, "down", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect == hs.geometry.unitrect(windowPositionToRect("left")) then
        newWindowPosition(windowPositionToRect("bottom left"))
     elseif rect == hs.geometry.unitrect(windowPositionToRect("right")) then
        newWindowPosition(windowPositionToRect("bottom right"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("top left")) then
        newWindowPosition(windowPositionToRect("bottom left"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("top right")) then
        newWindowPosition(windowPositionToRect("bottom right"))
    else
         newWindowPosition(windowPositionToRect("bottom"))
     end
end)

bind(move, "left", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect == hs.geometry.unitrect(windowPositionToRect("top")) then
        newWindowPosition(windowPositionToRect("top left"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("bottom")) then
        newWindowPosition(windowPositionToRect("bottom left"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("top right")) then
        newWindowPosition(windowPositionToRect("top left"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("bottom right")) then
        newWindowPosition(windowPositionToRect("bottom left"))
    else
         newWindowPosition(windowPositionToRect("left"))
    end
end)

bind(move, "right", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect == hs.geometry.unitrect(windowPositionToRect("top")) then
        newWindowPosition(windowPositionToRect("top right"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("bottom")) then
        newWindowPosition(windowPositionToRect("bottom right"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("top left")) then
        newWindowPosition(windowPositionToRect("top right"))
    elseif rect == hs.geometry.unitrect(windowPositionToRect("bottom left")) then
        newWindowPosition(windowPositionToRect("bottom right"))

    else
         newWindowPosition(windowPositionToRect("right"))
    end
end)

bind(grow, "up", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect.y ~= 0 then
        newWindowPosition(rect.x, rect.y, rect.w, rect.h + 1)
        if rect.h ~= hs.grid.get(hs.window.frontmostWindow()).h then
            newWindowPosition(rect.x, rect.y - 1, rect.w, rect.h)
        end
    end
end)

bind(grow, "down", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect.y ~= 12 then
        newWindowPosition(rect.x, rect.y, rect.w, rect.h + 1)
    end
end)

bind(grow, "left", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect.x ~= 0 then
        newWindowPosition(rect.x, rect.y, rect.w + 1, rect.h)
        if rect.w ~= hs.grid.get(hs.window.frontmostWindow()).w then
            newWindowPosition(rect.x - 1, rect.y, rect.w, rect.h)
        end
    end
end)

bind(grow, "right", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect.x ~= 12 then
        newWindowPosition(rect.x, rect.y, rect.w + 1, rect.h)
    end
end)

bind(shrink, "up", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    newWindowPosition(rect.x, rect.y, rect.w, rect.h - 1)
end)

bind(shrink, "down", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    newWindowPosition(rect.x, rect.y, rect.w, rect.h - 1)
    if rect.h ~= hs.grid.get(hs.window.frontmostWindow()).h then
        newWindowPosition(rect.x, rect.y + 1, rect.w, hs.grid.get(hs.window.frontmostWindow()).h)
    end
end)

bind(shrink, "left", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect.w ~= 3 then
        newWindowPosition(rect.x, rect.y, rect.w - 1, rect.h)
    end
end)

bind(shrink, "right", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    if rect.w ~= 3 then
    newWindowPosition(rect.x, rect.y, rect.w - 1, rect.h)
    end

    if rect.w ~= hs.grid.get(hs.window.frontmostWindow()).w then
        newWindowPosition(rect.x + 1, rect.y, hs.grid.get(hs.window.frontmostWindow()).w, rect.h)
    end
    hs.alert(hs.grid.get(hs.window.frontmostWindow()))
end)

bind(float, "up", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    newWindowPosition(rect.x, rect.y - 1, rect.w, rect.h)
    hs.alert(rect)
end)

bind(float, "down", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    newWindowPosition(rect.x, rect.y + 1, rect.w, rect.h)
end)

bind(float, "left", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    newWindowPosition(rect.x - 1, rect.y, rect.w, rect.h)
end)

bind(float, "right", function()
    local rect = hs.grid.get(hs.window.frontmostWindow())
    newWindowPosition(rect.x + 1, rect.y, rect.w, rect.h)
end)


bind(focus, "up", function() hs.window.filter.focusNorth() end)
bind(focus, "down", function() hs.window.filter.focusSouth() end)
bind(focus, "left", function() hs.window.filter.focusWest() end)
bind(focus, "right", function() hs.window.filter.focusEast() end)
-- bind(focus, "f", function() hs.window.toggleFullScreen() end)

