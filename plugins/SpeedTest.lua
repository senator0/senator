--[[

     **************************
     *  BlackPlus Plugins...  *
     *                        *
     *     By @MehdiHS        *
     *                        *
     *  Channel > @Black_Ch   *
     **************************
	 
]]
function run(msg, matches)
if not is_sudo(msg) then
return 
end
text = io.popen("speedtest-cli "):read('*all')
  return text
end
return {
  patterns = {
    '^[#/!]speedtest$'
  },
  run = run,
  moderated = true
}
--[[

     **************************
     *  BlackPlus Plugins...  *
     *                        *
     *     By @MehdiHS        *
     *                        *
     *  Channel > @Black_Ch   *
     **************************
	 
]]