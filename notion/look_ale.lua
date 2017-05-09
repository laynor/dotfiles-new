-- look_minimalist.lua drawing engine configuration file for Ion.

--one basic style motivated by the need to work with min_tabs.lua
--borders are slightly wider, and active-selected colour is much more
--vivid so it's easy to tell which frame has the focus even without tabs
--also, use relatively small font for the tabs -- which are always on
--screen -- but use a much bigger & easier on the eye font for pop-up
--menus which only take up space on screen transiently


package.path = package.path .. ';' .. os.getenv("HOME") .. '/.notion/scripts/?.lua'
package.loaded["android_material_design_colours"] = nil
local colors = require "android_material_design_colours"


if not gr.select_engine("de") then return end

de.reset()

de.defstyle("*", {
    shadow_colour = colors.md_indigo_200,
    highlight_colour = colors.md_indigo_50,
    background_colour = colors.md_indigo_700,
    foreground_colour = colors.md_indigo_50,
    padding_pixels = 1,
    highlight_pixels = 1,
    shadow_pixels = 1,
    border_style = "elevated",
    font = "-*-Segoe UI-medium-r-*-*-11-*-*-*-*-*-*-*",
    text_align = "center",
})

de.defstyle("frame", {
    based_on = "*",
    shadow_colour = "#404040",
    highlight_colour = "#404040",
    padding_colour = "#404040",
    background_colour = "#000000",
    foreground_colour = "#000000",
    padding_pixels = 0,
    highlight_pixels = 1,
    shadow_pixels = 1,
    de.substyle("active", {
        shadow_colour = colors.md_indigo_A700,   -- frame border here
        highlight_colour = colors.md_indigo_A700, -- frame border actually here
        padding_colour = "#8800aa",
        background_colour = "#d8d8d8",
        foreground_colour = "#000000",
    }),
})

de.defstyle("frame-ionframe", {
    based_on = "frame",
    border_style = "inlaid",
    padding_pixels = 1,
    spacing = 0,
})

de.defstyle("frame-floatframe", {
    based_on = "frame",
    border_style = "ridge"
})

de.defstyle("tab", {
    based_on = "*",
    padding_pixels = 2,
    highlight_pixels = 0,
    shadow_pixels = 0,
    de.substyle("active-selected", {
        shadow_colour = "#ff00ff",
        highlight_colour = "#ff5900",
        background_colour = colors.md_indigo_500,
        foreground_colour = colors.text,
    }),
    de.substyle("active-unselected", {
        shadow_colour = "#dfb700",
        highlight_colour = "#ffe700",
        background_colour =  colors.md_indigo_900,
        foreground_colour = "#888888",
    }),
    de.substyle("inactive-selected", {
        shadow_colour = "#6b2900",
        highlight_colour = "#ab6900",
        background_colour = colors.md_blue_grey_800,
        foreground_colour = colors.secondary_text,
    }),
    de.substyle("inactive-unselected", {
        shadow_colour = "#6b5500",
        highlight_colour = "#ab9500",
        background_colour = colors.md_blue_grey_900,
        foreground_colour = colors.secondary_text,
    }),
    text_align = "center",
})

de.defstyle("tab-frame", {
    based_on = "tab",
    de.substyle("*-*-*-*-activity", {
        shadow_colour = "#600000",
        highlight_colour = "#ff00ff",
        background_colour = "#32bc32",
        foreground_colour = "#ff0000",
    }),
})

de.defstyle("tab-frame-ionframe", {
    based_on = "tab-frame",
    spacing = 0,
})

de.defstyle("tab-menuentry", {
    based_on = "tab",
    font = "-*-Segoe UI-*-r-*-*-11-*-*-*-*-*-*-*",
    text_align = "left",
    highlight_pixels = 0,
    shadow_pixels = 0,
    --make tab menus bright rather than drab even with inactive tabs
    de.substyle("inactive-unselected", {
       shadow_colour = "#dfb700",
       highlight_colour = "#ffe700",
       background_colour = "#ffc700",
       foreground_colour = "#000000",
    }),
})

de.defstyle("tab-menuentry-big", {
    based_on = "tab-menuentry",
    font = "-*-Segoe UI-*-r-*-*-11-*-*-*-*-*-*-*",
    padding_pixels = 7,
    de.substyle("inactive-unselected", {
        shadow_colour = "#dfb700",
        highlight_colour = "#ffe700",
        background_colour = "#ffc700",
        foreground_colour = "#000000",
    }),
})

de.defstyle("input", {
    based_on = "*",
    shadow_colour = colors.md_indigo_600,
    highlight_colour = colors.md_indigo_600,
    background_colour = colors.md_indigo_500,
    foreground_colour = colors.text,
    padding_pixels = 1,
    highlight_pixels = 1,
    shadow_pixels = 1,
    -- font = "-*-Segoe UI-medium-r-*-*-11-*-*-*-*-*-*-*",
    font = "-*-Consolas-medium-r-*-*-11-*-*-*-*-*-*-*",
    border_style = "elevated",
    de.substyle("*-cursor", {
        background_colour = "#ff00ff",
        foreground_colour = "#000000",
    }),
    de.substyle("*-selection", {
        background_colour = colors.md_light_blue_800,
        foreground_colour = colors.text,
    }),
})

de.defstyle("stdisp", {
    based_on = "*",
    shadow_pixels = 0,
    highlight_pixels = 0,
    text_align = "left",
    padding_pixels = 3,
})

gr.refresh()
