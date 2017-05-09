function next_wrap()
        scr = ioncore.goto_next_screen()
        if obj_is(scr, "WRootWin") then
                scr = ioncore.goto_nth_screen(0)
        end
        return scr
end

function prev_wrap()
        scr = ioncore.goto_prev_screen()
        if obj_is(scr, "WRootWin") then
                scr = ioncore.goto_nth_screen(-1)
        end
        return scr
end

defbindings("WScreen", {
  bdoc("Go to next/previous screen on multihead setup."),
  kpress(META.."W", "next_wrap()"),
})
