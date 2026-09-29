local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local Window = Rayfield:CreateWindow({
    name = "Grow Anything Selector",
    subtitle = "Choose which version to run",
    theme = "rose",
    sidebarLayout = false,
    showName = "GA Version Selector",
})

local Tab = Window:CreateTab({ name = "Select Version", icon = "" })

Tab:CreateSection({ name = "🌱 Choose Version" })

Tab:CreateText({
    text = "Select which Grow Anything script you want to run.\nBoth versions are made by @PunPrue"
})

Tab:CreateSection({ name = "📜 Scripts" })

Tab:CreateButton({
    name = "▶ Run OLD Script",
    callback = function()
        Window:Notify({
            title = "Loading...",
            content = "Starting Old Grow Anything script",
            duration = 3
        })
        task.wait(0.5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PunPrue/Script/refs/heads/main/Grow%20Anything.lua"))()
        Window:Unload()
    end
})

Tab:CreateButton({
    name = "▶ Run REWORK Script",
    callback = function()
        Window:Notify({
            title = "Loading...",
            content = "Starting Reworked Grow Anything script",
            duration = 3
        })
        task.wait(0.5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PunPrue/Script/refs/heads/main/Grow%20Anything-Rework.lua"))()
        Window:Unload()
    end
})


Tab:CreateSection({ name = "ℹ️ Info" })

Tab:CreateText({
    name = "Old Script",
    text = "❌ No longer updated / Discontinued\nContains Solar + Alien features (outdated)"
})

Tab:CreateText({
    name = "Rework Script",
    text = "✅ Actively maintained (Rayfield Gen2)\n• Removed Solar & Alien\n• Added Magic Event\n• Cleaner & better structure"
})

Window:Notify({
    title = "Grow Anything Selector",
    content = "Choose a version",
    duration = 4
})
