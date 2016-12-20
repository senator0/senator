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
    local receiver = get_receiver(msg)
    local site = matches[2]
	local url = "http://logo.clearbit.com/"..site.."?size=800"
	local randoms = math.random(1000,900000)
	local randomd = randoms..".jpg"
	local file = download_to_file(url,randomd)
	local cb_extra = {file_path=file}
    send_photo(receiver, file, rmtmp_cb, cb_extra)
end
return {
  patterns = {
    "^[#!/](logo) (.*)$",
    "^([Ll]ogo) (.*)$",
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