META="Mod4+"
ALTMETA="Mod1+"

package.path = package.path .. ';' .. os.getenv("HOME") .. '/.notion/scripts/?.lua'

dopath("cfg_defaults")
-- dopath("nest_ws.lua")
dopath("mod_fuzzy_query")
dopath("emacs_bindings")

defbindings("WScreen", {
   bdoc("Go to next/previous screen on multihead setup."),
   kpress(META.."Shift+period", "ioncore.goto_next_screen()"),
   bdoc("Display the main menu."),
   kpress(ALTMETA.."F2", "mod_query.query_menu(_, _sub, 'mainmenu', 'Main menu:')"),
})

function get_frame(region)
  if region == nil then
    return nil
  elseif (obj_is(region, "WFrame")) then
      return region
  else
    return get_frame(region:current())
  end
end

function move_to_other_screen(region, sub)
  if sub then
    scr = next_wrap()
    frame = get_frame(scr)
    frame:attach(sub)
    sub:goto_focus()
  end
end

function lock_screen(region)
  mod_query.exec_on_merr(region, 'qdbus org.freedesktop.ScreenSaver /ScreenSaver Lock')
end

defbindings("WFrame.toplevel", {
   --kpress(META.."O", nil),
   --kpress(META.."O", "WFrame.switch_next(_)"),
   kpress(META.."U", "WFrame.switch_prev(_)"),
   kpress(META.."R", "mod_query.query_exec(_)"),
   kpress(META.."P", "ioncore.goto_activity()"),
   kpress(META.."I", "ioncore.goto_previous()"),
})

defbindings("WFrame", {
              kpress(META.."Shift+R", "WFrame.begin_kbresize(_)"),
})

defbindings("WMPlex.toplevel", {
   bdoc("Query for a client window to go to."),
   kpress(META.."J", "mod_query.query_fuzzy_gotoclient(_)"),
   kpress(META.."Z", "move_to_other_screen(_, _sub)")
})
-- defbindings("WScreen", {
--               kpress(META.."Z", "move_to_other_screen(_, _sub)")
-- })

defmenu("sessionmenu", {
          menuentry("Save",            "ioncore.snapshot()"),
          menuentry("Restart",         "ioncore.restart_other('notion')"),
          menuentry("Restart TWM",     "ioncore.restart_other('twm')"),
          menuentry("Restart Awesome", "ioncore.restart_other('awesome')"),
          menuentry("Lock", "lock_screen(_)"),
          menuentry("Exit",            "ioncore.shutdown()"),
})
