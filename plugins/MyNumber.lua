--[[

     **************************
     *  BlackPlus Plugins...  *
     *                        *
     *     By @MehdiHS        *
     *                        *
     *  Channel > @Black_Ch   *
     **************************
	 
]]
do

local function run(msg, matches)
  if matches[1] == 'my' then
  if matches[2] == 'number' then
      return reply_msg(msg.id, "+"..(msg.from.phone or '----'), ok_cb, false)
end
  if matches[2] == 'id' then
      return reply_msg(msg.id, msg.from.id, ok_cb, false)
end
  if matches[2] == 'user' then
      return reply_msg(msg.id, '@'..(msg.from.username or '----'), ok_cb, false)
end
  if matches[2] == 'username' then
      return reply_msg(msg.id, '@'..(msg.from.username or '----'), ok_cb, false)
end
  if matches[2] == 'link' then
      return reply_msg(msg.id, 'Telegram.Me/'..(msg.from.username or '----'), ok_cb, false)
end
  if matches[2] == 'photo' then
      return reply_msg(msg.id, 'Telegram.Me/'..(msg.from.username or '----'), ok_cb, false)
end
end
if matches[1] == 'gid' then
      return reply_msg(msg.id, msg.to.id, ok_cb, true)
end
if matches[1] == 'gname' then
      return reply_msg(msg.id, msg.to.title, ok_cb, false)
    end
end
return {
  patterns = {
    "^[#!/]([Mm]y) (id)$",
    "^[#!/]([Mm]y) (link)$",
    "^[#!/]([Mm]y) (number)$",
    "^[#!/]([Mm]y) (user)$",
	"^[#!/]([Mm]y) (photo)$",
    "^[#!/]([Mm]y) (username)$",
	"^[#!/]([Gg]id)$",
	"^[#!/]([Gg]name)$",
    "^([Mm]y) (id)$",
    "^([Mm]y) (link)$",
    "^([Mm]y) (number)$",
    "^([Mm]y) (user)$",
	"^([Mm]y) (photo)$",
    "^([Mm]y) (username)$",
	"^([Gg]id)$",
	"^([Gg]name)$",
    },
  run = run
}
end
--[[

     **************************
     *  BlackPlus Plugins...  *
     *                        *
     *     By @MehdiHS        *
     *                        *
     *  Channel > @Black_Ch   *
     **************************
	 
]]