local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '<code>'..#result..'</code> <b>Massages</b> Was Deleted!', ok_cb, false)
  else
    send_msg(extra.chatid, 'Selected <b>Massage</b> Numbers Has been Deleted!', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'clean' and is_owner(msg) or matches[1] =='حذف' and is_owner(msg) or matches[1] == 'rm' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 200 or tonumber(matches[2]) < 1 then
        return "Error of Delete <b>Massage</b>\nSelect <code>1-200</code> <b>Massages</b> Number for Delete!"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "Only Can Use in <b>SuperGroups</b>!"
    end
  else
    return "<b>Das Nazan</b> Bache!"
  end
end

return {
    patterns = {
        '^[!/#](clean) msg (%d*)$',
        '^[!/#](rm)sg (%d*)$',
        '^(حذف) (%d*)$'
    },
    run = run
}
