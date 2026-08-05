hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float())
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("pavucontrol"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(0))

hl.bind("ALT + SPACE", hl.dsp.exec_cmd(calc))
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("~/bin/power-menu"))
hl.bind("CTRL + SHIFT + N", hl.dsp.exec_cmd("opera-gx --incognito"))

-- Vim Movement
local directions = {
    H = "left",
    J = "down",
    K = "up",
    L = "right",

    left = "left",
    down = "down",
    up = "up",
    right = "right",
}

for key, dir in pairs(directions) do
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ direction = dir }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ direction = dir }))
end

-- Workspaces
for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

-- Mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
