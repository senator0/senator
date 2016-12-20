
do
local function pre_process(msg)
 local hash = 'muteall:'..msg.to.id
  if redis:get(hash) and msg.to.type == 'channel' and not is_momod(msg)  then
   delete_msg(msg.id, ok_cb, false)
       end
    return msg
 end
 
local function run(msg, matches)
 if matches[1] == 'muteall' and is_momod(msg) then
       local hash = 'muteall:'..msg.to.id
       if not matches[2] then
              redis:set(hash, true)
             return "<b>Mute Status switched to</b> : <code>Enable</code>"
 else

local hour = string.gsub(matches[2], 'h', '')
 local num1 = tonumber(hour) * 3600
local minutes = string.gsub(matches[3], 'm', '')
 local num2 = tonumber(minutes) * 60
local second = string.gsub(matches[4], 's', '')
 local num3 = tonumber(second) 
local num4 = tonumber(num1 + num2 + num3)
redis:setex(hash, num4, true)
 return "Mute all <i>Status</i> :\n\n<b>Hour</b> > <code>"..matches[2].."</code>\n<b>Minute</b> > <code>"..matches[3].."</code>\n<b>Second</b> > <code>"..matches[4].."</code>"
 end
 end
if matches[1] == 'unmuteall' and is_momod(msg) then
               local hash = 'muteall:'..msg.to.id
        redis:del(hash)
          return "<b>Mute Status switched to</b> : <code>Disable</code>"
  end
end
return {
   patterns = {
      '^[/!#](muteall)$',
      '^[/!#](unmuteall)$',
      '^[/!#](muteall) (.*) (.*) (.*)$',
 },
run = run,
  pre_process = pre_process
}
end

-- Edited By @MobinDev
