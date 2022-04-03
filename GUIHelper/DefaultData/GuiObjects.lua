local Defaults = {}

local inf = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368

Defaults.Frame = {
    SelectionImageObject = "",

    Archivable = true,
    Active = false,
    AnchorPoint = Vector2.new(0,0),
    AutomaticSize = Enum.AutomaticSize.None,
    BackgroundColor3 = Color3.new(255,255,255),
    BackgroundTransparency = 0,
    BorderColor3 = Color3.new(27,42,53),
    BorderMode = Enum.BorderMode.Outline,
    BorderSizePixel = 1,
    LayoutOrder = 0,
    Name = "Frame",
    Parent = "",
    Position = UDim2.new(0,0,0,0),
    Rotation = 0,
    Selectable = false,
    Size = UDim2.new(0,100,0,100),
    SizeConstraint = Enum.SizeConstraint.RelativeXY,
    Style = Enum.FrameStyle.Custom,
    Visible = true,
    ZIndex = 1,

    ClipsDescendants = false,
    NextSelectionDown = "",
    NextSelectionLeft = "",
    NextSelectionRight = "",
    NextSelectionUp = "",

    AutoLocalize = true,
    RootLocalizationTable = "",
}

Defaults.ViewportFrame = {
    Ambient = Color3.new(200,200,200),
    LightColor = Color3.new(140,140,140),
    LightDirection = Vector3.new(-1,-1,-1),
    SelectionImageObject = "",

    Archivable = true,
    Active = false,
    AnchorPoint = Vector2.new(0,0),
    AutomaticSize = Enum.AutomaticSize.None,
    BackgroundColor3 = Color3.new(255,255,255),
    BackgroundTransparency = 0,
    BorderColor3 = Color3.new(27,42,53),
    BorderMode = Enum.BorderMode.Outline,
    BorderSizePixel = 1,
    CurrentCamera = "",
    LayoutOrder = 0,
    Name = "ViewportFrame",
    Parent = "",
    Position = UDim2.new(0,0,0,0),
    Rotation = 0,
    Selectable = false,
    Size = UDim2.new(0,100,0,100),
    SizeConstraint = Enum.SizeConstraint.RelativeXY,
    Visible = true,
    ZIndex = 1,

    ClipsDescendants = false,
    NextSelectionDown = "",
    NextSelectionLeft = "",
    NextSelectionRight = "",
    NextSelectionUp = "",

    ImageColor3 = Color3.new(255,255,255),
    ImageTransparency = 0,

    AutoLocalize = true,
    RootLocalizationTable = "",
}

Defaults.ScrollingFrame = {
    SelectionImageObject = "",

    Archivable = true,
    Active = true,
    AnchorPoint = Vector2.new(0,0),
    AutomaticSize = Enum.AutomaticSize.None,
    BackgroundColor3 = Color3.new(255,255,255),
    BackgroundTransparency = 0,
    BorderColor3 = Color3.new(27,42,53),
    BorderMode = Enum.BorderMode.Outline,
    BorderSizePixel = 1,
    LayoutOrder = 0,
    Name = "ScrollingFrame",
    Parent = "",
    Position = UDim2.new(0,0,0,0),
    Rotation = 0,
    Selectable = true,
    Size = UDim2.new(0,100,0,100),
    SizeConstraint = Enum.SizeConstraint.RelativeXY,
    Visible = true,
    ZIndex = 1,

    ClipsDescendants = true,
    NextSelectionDown = "",
    NextSelectionLeft = "",
    NextSelectionRight = "",
    NextSelectionUp = "",

    AutoLocalize = true,
    RootLocalizationTable = "",

    AutomaticCanvasSize = Enum.AutomaticSize.None,
    BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png",
    CanvasPosition = Vector2.new(0,0),
    CanvasSize = UDim2.new(0,0,2,0),
    ElasticBehavior = Enum.ElasticBehavior.WhenScrollable,
    HorizontalScrollBarInset = Enum.ScrollBarInset.None,
    MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
    ScrollBarImageColor3 = Color3.new(0,0,0),
    ScrollBarImageTransparency = 0,
    ScrollBarThickness = 12,
    ScrollingDirection = Enum.ScrollingDirection.XY,
    ScrollingEnabled = true,
    TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png",
    VerticalScrollBarInset = Enum.ScrollBarInset.None,
    VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right,
}

Defaults.TextLabel = {
    SelectionImageObject = "",

    Archivable = true,
    Active = false,
    AnchorPoint = Vector2.new(0,0),
    AutomaticSize = Enum.AutomaticSize.None,
    BackgroundColor3 = Color3.new(255,255,255),
    BackgroundTransparency = 0,
    BorderColor3 = Color3.new(27,42,53),
    BorderMode = Enum.BorderMode.Outline,
    BorderSizePixel = 1,
    LayoutOrder = 0,
    Name = "TextLabel",
    Parent = "",
    Position = UDim2.new(0,0,0,0),
    Rotation = 0,
    Selectable = false,
    Size = UDim2.new(0,200,0,50),
    SizeConstraint = Enum.SizeConstraint.RelativeXY,
    Visible = true,
    ZIndex = 1,

    ClipsDescendants = false,
    NextSelectionDown = "",
    NextSelectionLeft = "",
    NextSelectionRight = "",
    NextSelectionUp = "",

    AutoLocalize = true,
    RootLocalizationTable = "",

    Font = Enum.Font.SourceSans,
    LineHeight = 1,
    MaxVisibleGraphemes = -1,
    RichText = false,
    Text = "Label",
    TextColor3 = Color3.new(0,0,0),
    TextScaled = false,
    TextSize = 14,
    TextStrokeColor3 = Color3.new(0,0,0),
    TextStrokeTransparency = 1,
    TextTransparency = 0,
    TextTruncate = Enum.TextTruncate.None,
    TextWrapped = false,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextYAlignment = Enum.TextYAlignment.Center,
}

Defaults.TextButton = {
    SelectionImageObject = "",

    Archivable = true,
    Active = true,
    AnchorPoint = Vector2.new(0,0),
    AutoButtonColor = true,
    AutomaticSize = Enum.AutomaticSize.None,
    BackgroundColor3 = Color3.new(255,255,255),
    BackgroundTransparency = 0,
    BorderColor3 = Color3.new(27,42,53),
    BorderMode = Enum.BorderMode.Outline,
    BorderSizePixel = 1,
    LayoutOrder = 0,
    Modal = false,
    Name = "TextButton",
    Parent = "",
    Position = UDim2.new(0,0,0,0),
    Rotation = 0,
    Selectable = true,
    Selected = false,
    Size = UDim2.new(0,200,0,50),
    SizeConstraint = Enum.SizeConstraint.RelativeXY,
    Style = Enum.ButtonStyle.Custom,
    Visible = true,
    ZIndex = 1,

    ClipsDescendants = false,
    NextSelectionDown = "",
    NextSelectionLeft = "",
    NextSelectionRight = "",
    NextSelectionUp = "",

    AutoLocalize = true,
    RootLocalizationTable = "",

    Font = Enum.Font.SourceSans,
    LineHeight = 1,
    MaxVisibleGraphemes = -1,
    RichText = false,
    Text = "Button",
    TextColor3 = Color3.new(0,0,0),
    TextScaled = false,
    TextSize = 14,
    TextStrokeColor3 = Color3.new(0,0,0),
    TextStrokeTransparency = 1,
    TextTransparency = 0,
    TextTruncate = Enum.TextTruncate.None,
    TextWrapped = false,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextYAlignment = Enum.TextYAlignment.Center,
}

Defaults.TextBox = {
    SelectionImageObject = "",

    Archivable = true,
    Active = true,
    AnchorPoint = Vector2.new(0,0),
    AutomaticSize = Enum.AutomaticSize.None,
    BackgroundColor3 = Color3.new(255,255,255),
    BackgroundTransparency = 0,
    BorderColor3 = Color3.new(27,42,53),
    BorderMode = Enum.BorderMode.Outline,
    BorderSizePixel = 1,
    ClearTextOnFocus = true,
    CursorPosition = 1,
    LayoutOrder = 0,
    MultiLine = false,
    Name = "TextBox",
    Parent = "",
    Position = UDim2.new(0,0,0,0),
    Rotation = 0,
    Selectable = true,
    SelectionStart = -1,
    ShowNativeInput = true,
    Size = UDim2.new(0,200,0,50),
    SizeConstraint = Enum.SizeConstraint.RelativeXY,
    TextEditable = true,
    Visible = true,
    ZIndex = 1,

    ClipsDescendants = false,
    NextSelectionDown = "",
    NextSelectionLeft = "",
    NextSelectionRight = "",
    NextSelectionUp = "",

    AutoLocalize = true,
    RootLocalizationTable = "",

    Font = Enum.Font.SourceSans,
    LineHeight = 1,
    MaxVisibleGraphemes = -1,
    PlaceholderColor3 = Color3.new(178,178,178),
    PlaceholderText = "",
    RichText = false,
    Text = "TextBox",
    TextColor3 = Color3.new(0,0,0),
    TextScaled = false,
    TextSize = 14,
    TextStrokeColor3 = Color3.new(0,0,0),
    TextStrokeTransparency = 1,
    TextTransparency = 0,
    TextTruncate = Enum.TextTruncate.None,
    TextWrapped = false,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextYAlignment = Enum.TextYAlignment.Center,
}

Defaults.ImageLabel = {
    SelectionImageObject = "",

    Archivable = true,
    Active = false,
    AnchorPoint = Vector2.new(0,0),
    AutomaticSize = Enum.AutomaticSize.None,
    BackgroundColor3 = Color3.new(255,255,255),
    BackgroundTransparency = 0,
    BorderColor3 = Color3.new(27,42,53),
    BorderMode = Enum.BorderMode.Outline,
    BorderSizePixel = 1,
    LayoutOrder = 0,
    Name = "ImageLabel",
    Parent = "",
    Position = UDim2.new(0,0,0,0),
    Rotation = 0,
    Selectable = false,
    Size = UDim2.new(0,100,0,100),
    SizeConstraint = Enum.SizeConstraint.RelativeXY,
    Visible = true,
    ZIndex = 1,

    ClipsDescendants = false,
    NextSelectionDown = "",
    NextSelectionLeft = "",
    NextSelectionRight = "",
    NextSelectionUp = "",

    Image = "rbxasset://textures/ui/GuiImagePlaceholder.png",
    ImageColor3 = Color3.new(255,255,255),
    ImageRectOffset = Vector2.new(0,0),
    ImageRectSize = Vector2.new(0,0),
    ImageTransparency = 0,
    ResampleMode = Enum.ResamplerMode.Default,
    ScaleType = Enum.ScaleType.Stretch,
    SliceScale = 1,

    AutoLocalize = true,
    RootLocalizationTable = "",
}

Defaults.ImageButton = {
    SelectionImageObject = "",

    Archivable = true,
    Active = false,
    AnchorPoint = Vector2.new(0,0),
    AutoButtonColor = true,
    AutomaticSize = Enum.AutomaticSize.None,
    BackgroundColor3 = Color3.new(255,255,255),
    BackgroundTransparency = 0,
    BorderColor3 = Color3.new(27,42,53),
    BorderMode = Enum.BorderMode.Outline,
    BorderSizePixel = 1,
    LayoutOrder = 0,
    Modal = false,
    Name = "ImageButton",
    Parent = "",
    Position = UDim2.new(0,0,0,0),
    Rotation = 0,
    Selectable = true,
    Selected = false,
    Size = UDim2.new(0,100,0,100),
    SizeConstraint = Enum.SizeConstraint.RelativeXY,
    Style = Enum.ButtonStyle.Custom,
    Visible = true,
    ZIndex = 1,

    ClipsDescendants = false,
    NextSelectionDown = "",
    NextSelectionLeft = "",
    NextSelectionRight = "",
    NextSelectionUp = "",

    HoverImage = "",
    Image = "rbxasset://textures/ui/GuiImagePlaceholder.png",
    ImageColor3 = Color3.new(255,255,255),
    ImageRectOffset = Vector2.new(0,0),
    ImageRectSize = Vector2.new(0,0),
    ImageTransparency = 0,
    PressedImage = "",
    ResampleMode = Enum.ResamplerMode.Default,
    ScaleType = Enum.ScaleType.Stretch,
    SliceScale = 1,

    AutoLocalize = true,
    RootLocalizationTable = "",
}

Defaults.ScreenGui = {
    Archivable = true,
    DisplayOrder = 0,
    Enabled = true,
    IgnoreGuiInset = false,
    Name = "ScreenGui",
    Parent = "",
    ResetOnSpawn = true,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

    AutoLocalize = true,
    RootLocalizationTable = "",
}

Defaults.SurfaceGui = {
    ZOffset = 0,

    Archivable = true,
    Active = true,
    Adornee = "",
    AlwaysOnTop = false,
    Enabled = true,
    Face = Enum.NormalId.Front,
    LightInfluence = 1,
    Name = "SurfaceGui",
    Parent = "",
    ResetOnSpawn = true,
    ToolPunchThroughDistance = 0,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

    ClipsDescendants = true,

    AutoLocalize = true,
    RootLocalizationTable = "",

    PixelsPerStud = 50,
    SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud
}

Defaults.BillBoardGui = {
    Archivable = true,
    Active = true,
    Adornee = "",
    AlwaysOnTop = false,
    Enabled = true,
    ExtentsOffset = Vector3.new(0,0,0),
    ExtentsOffsetWorldSpace = Vector3.new(0,0,0),
    LightInfluence = 1,
    MaxDistance = inf,
    Name = "BillBoardGui",
    Parent = "",
    PlayerToHideFrom = "",
    ResetOnSpawn = true,
    Size = UDim2.new(0,200,0,50),
    SizeOffset = Vector2.new(0,0),
    StudsOffset = Vector3.new(0,0,0),
    StudsOffsetWorldSpace = Vector3.new(0,0,0),
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,

    ClipsDescendants = true,

    AutoLocalize = true,
    RootLocalizationTable = "",
}


Defaults.UICorner = {
    CornerRadius = UDim.new(0,8),

    Archivable = true,
    Name = "UICorner",
    Parent = ""
}

Defaults.UIGridLayout = {
    CellPadding = UDim2.new(0,5,0,5),
    CellSize = UDim2.new(0,100,0,100),

    Archivable = true,
    Name = "UIGridLayout",
    Parent = "",

    FillDirection = Enum.FillDirection.Horizontal,
    FillDirectionMaxCells = 0,
    HorizontalAlignment = Enum.HorizontalAlignment.Left,
    SortOrder = Enum.SortOrder.LayoutOrder,
    StartCorner = Enum.StartCorner.TopLeft,
    VerticalAlignment = Enum.VerticalAlignment.Top
}

Defaults.UIListLayout = {
    Padding = UDim.new(0,0),

    Archivable = true,
    Name = "UIListLayout",
    Parent = "",

    FillDirection = Enum.FillDirection.Vertical,
    HorizontalAlignment = Enum.HorizontalAlignment.Left,
    SortOrder = Enum.SortOrder.LayoutOrder,
    VerticalAlignment = Enum.VerticalAlignment.Top
}

Defaults.UIGradient = {
    Color = Color3.new(255,255,255),
    Enabled = true,
    Offset = Vector2.new(0,0),
    Rotation = 0,
    Transparency = NumberSequence.new(0,1), -- Creates 0,0,0,1,1,0 but we need 0,0,0,1,0,0

    Archivable = true,
    Name = "UIGradient",
    Parent = "",
}

Defaults.UITableLayout = {
    FillEmptySpaceColumns = false,
    FillEmptySpaceRows = false,
    Padding = UDim.new(0,0),

    Archivable = true,
    Name = "UITableLayout",
    Parent = "",

    FillDirection = Enum.FillDirection.Vertical,
    HorizontalAlignment = Enum.HorizontalAlignment.Left,
    MajorAxis = Enum.TableMajorAxis.RowMajor,
    SortOrder = Enum.SortOrder.LayoutOrder,
    VerticalAlignment = Enum.VerticalAlignment.Top
}

Defaults.UISizeConstraint = {
    Archivable = true,
    Name = "UISizeConstraint",
    Parent = "",

    MaxSize = Vector2.new(inf, inf),
    MinSize = Vector2.new(0,0)
}

Defaults.UITextSizeConstraint = {
    Archivable = true,
    Name = "UITextSizeConstraint",
    Parent = "",

    MaxTextSize = 100,
    MinTextSize = 1
}

Defaults.UIPageLayout = {
    Animated = true,
    Circular = false,
    EasingDirection = Enum.EasingDirection.Out,
    EasingStyle = Enum.EasingStyle.Back,
    Padding = UDim.new(0,0),
    TweenTime = 1,

    Archivable = true,
    Name = "UIPageLayout",
    Parent = "",

    FillDirection = Enum.FillDirection.Horizontal,
    HorizontalAlignment = Enum.HorizontalAlignment.Left,
    SortOrder = Enum.SortOrder.LayoutOrder,
    VerticalAlignment = Enum.VerticalAlignment.Top,

    GamepadInputEnabled = true,
    ScrollWheelInputEnabled = true,
    TouchInputEnabled = true
}

Defaults.UIAspectRatioConstraint = {
    Archivable = true,
    Name = "UIAspectRatioConstraint",
    Parent = "",

    AspectRatio = 1,
    AspectType = Enum.AspectType.FitWithinMaxSize,
    DominantAxis = Enum.DominantAxis.Width
}

Defaults.UIPadding = {
    Archivable = true,
    Name = "UIPadding",
    Parent = "",

    PaddingBottom = UDim.new(0,0),
    PaddingLeft = UDim.new(0,0),
    PaddingRight = UDim.new(0,0),
    PaddingTop = UDim.new(0,0),
}

Defaults.UIScale = {
    Archivable = true,
    Name = "UIScale",
    Parent = "",

    Scale = 1
}

Defaults.UIStroke = {
    ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual,
    Color = Color3.new(0,0,0),
    LineJoinMode = Enum.LineJoinMode.Round,
    Thickness = 1,
    Transparency = 0,

    Archivable = true,
    Enabled = true,
    Name = "UIStroke",
    Parent = "",
}

Defaults.ClassNames = {}

for className, _ in pairs(Defaults) do
    if className ~= "ClassNames" then
        table.insert(Defaults.ClassNames, className)
    end
end


return Defaults