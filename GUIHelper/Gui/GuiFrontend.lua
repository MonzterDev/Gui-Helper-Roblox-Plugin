local Gui = {}

Gui.Frame = script.Parent.Parent.Frame
Gui.Center = Gui.Frame.CenterContainer.Center

Gui.Copy = Gui.Frame.PropContainer.Copy
Gui.Paste = Gui.Frame.PropContainer.Paste

Gui.Settings = Gui.Frame.OtherContainer.Settings
Gui.Default = Gui.Frame.OtherContainer.Default
Gui.Export = Gui.Frame.OtherContainer.Export

Gui.ScaleSize = Gui.Frame.ScaleContainer:FindFirstChild("Size")
Gui.ScalePosition = Gui.Frame.ScaleContainer:FindFirstChild("Position")

-- local function generateButton(name: string, text: string)
--     local button: TextButton = Gui.ButtonTemplate:Clone()
--     button.Name = name
--     button.Text = text
--     button.Parent = Gui.GeneralFrame

--     return button
-- end

-- Gui.Center = generateButton("Center", "Center Align")
-- Gui.Copy = generateButton("Copy", "Copy Properties")
-- Gui.Export = generateButton("Export", "Export")
-- Gui.Paste = generateButton("Paste", "Paste Properties")
-- Gui.OffsetSize = generateButton("Offset Size", "Convert Size to Offset")
-- Gui.OffsetPosition = generateButton("Offset Position", "Convert Position to Offset")
-- Gui.ScaleSize = generateButton("Scale Size", "Convert Size to Scale")
-- Gui.ScalePosition = generateButton("Scale Position", "Convert Position to Scale")
-- Gui.Default = generateButton("Default", "Set Properties as Default")

return Gui