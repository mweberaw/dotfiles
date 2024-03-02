switcher_space = hs.window.switcher.new(hs.window.filter.new():setCurrentSpace(true):setDefaultFilter({}))
hs.hotkey.bind("ctrl-alt-cmd", "j", "Next window", function()
	switcher_space:next()
end)
hs.hotkey.bind("ctrl-alt-cmd", "k", "Previous window", function()
	switcher_space:previous()
end)
hs.hotkey.bind("ctrl-alt-cmd", "return", "Maximize current window", function()
	hs.window.focusedWindow():maximize()
end)
hs.hotkey.bind("ctrl-alt-cmd", "h", "Move current one screen west", function()
	hs.window.focusedWindow():moveOneScreenWest()
end)
hs.hotkey.bind("ctrl-alt-cmd", "l", "Move current one screen east", function()
	hs.window.focusedWindow():moveOneScreenEast()
end)
for index = 1, 8 do
	hs.hotkey.bind(
		"ctrl-alt-cmd",
		string.format("%d", index),
		string.format("Move current window to space %d", index),
		function()
			local currentWindow = hs.window.focusedWindow()
			hs.spaces.moveWindowToSpace(currentWindow, hs.spaces.spacesForScreen(hs.screen.primaryScreen())[index])
			currentWindow:focus()
		end
	)
end
hs.hotkey.bind("ctrl-alt-cmd", "left", "Split left", function()
	local screen = hs.window.focusedWindow():screen():frame()
	hs.window.focusedWindow():move({ x = screen.x, y = screen.y, w = math.floor(screen.w / 2), h = screen.h })
end)
hs.hotkey.bind("ctrl-alt-cmd", "right", "Split right", function()
	local screen = hs.window.focusedWindow():screen():frame()
	hs.window
		.focusedWindow()
		:move({ x = screen.x + math.floor(screen.w / 2), y = screen.y, w = math.floor(screen.w / 2), h = screen.h })
end)
