---HTTPMethod: HTTP methods.<br>
---GET method
---@type integer
GET_METHOD = 0
---HTTPMethod: HTTP methods.<br>
---POST method
---@type integer
POST_METHOD = 0
---HTTPMethod: HTTP methods.<br>
---HEAD method
---@type integer
HEAD_METHOD = 0
---HTTPMethod: HTTP methods.<br>
---OPTIONS method
---@type integer
OPTIONS_METHOD = 0
---HTTPMethod: HTTP methods.<br>
---PUT method
---@type integer
PUT_METHOD = 0
---HTTPMethod: HTTP methods.<br>
---DELETE method
---@type integer
DELETE_METHOD = 0
---HTTPMethod: HTTP methods.<br>
---TRACE method
---@type integer
TRACE_METHOD = 0
---HTTPMethod: HTTP methods.<br>
---CONNECT method
---@type integer
CONNECT_METHOD = 0
---
Network = {
---Initialize network system.
--- Usage example:
---```
---Network.init()
---```
init = function() return 0 end, 
---Terminate network system.
--- Usage example:
---```
---Network.term()
---```
term = function() return 0 end, 
---Initialize debug FTP.
--- Usage example:
---```
---Network.initFTP()
---```
initFTP = function() return 0 end, 
---Terminate debug FTP.
--- Usage example:
---```
---Network.termFTP()
---```
termFTP = function() return 0 end, 
---Get console IP address.
--- Usage example:
---```
---ip_addr = Network.getIPAddress()
---```
---@return string result The IP Address of the console.
getIPAdddress = function() return "" end, 
---Get console Mac address.
--- Usage example:
---```
---mac_addr = Network.getMacAddress()
---```
---@return string result The Mac Address of the console.
getMacAdddress = function() return "" end, 
---Check if WiFi is available.
--- Usage example:
---```
---if Network.isWifiEnabled() then
---Network.downloadFile("http://www.website.com/file.zip", "ux0:/data/file.zip")
---end
---```
---@return boolean result true if available, false otherwise.
isWifiEnabled = function() return false end, 
---Get WiFi strength level.
--- Usage example:
---```
---wifi_lv = Network.getWifiLevel()
---```
---@return integer result The WiFi strength level percentage.
getWifiLevel = function() return 0 end, 
---Download a file via HTTP protocol (synchronous).
--- Usage example:
---```
---Network.downloadFile("http://www.website.com/file.zip", "ux0:/data/file.zip")
---```
---@param url string The url from where to download the file.
---@param file string Filename where to save the downloaded file.
---@param useragent string Custom useragent to use <b>(optional)</b>.
---@param method integer Method to use to perform the HTTP request <b>(optional)</b>.
---@param postdata string POST data to send with the HTTP request <b>(optional)</b>.
---<br>NOTE: <b>postdata</b> will work only with <b>method</b> set to  HTTPMethod`POST_METHOD` POST_METHOD.
---<br>NOTE: If not specified,  HTTPMethod`GET_METHOD` GET_METHOD is used as default.
downloadFile = function(url, file, useragent, method, postdata) return 0 end, 
---Download a file via HTTP protocol (asynchronous).
--- Usage example:
---```
---Network.downloadFileAsync("http://www.website.com/file.zip", "ux0:/data/file.zip")
---```
---@param url string The url from where to download the file.
---@param file string Filename where to save the downloaded file.
---@param useragent string Custom useragent to use <b>(optional)</b>.
---@param method integer Method to use to perform the HTTP request <b>(optional)</b>.
---@param postdata string POST data to send with the HTTP request <b>(optional)</b>.
---<br>NOTE: <b>postdata</b> will work only with <b>method</b> set to  HTTPMethod`POST_METHOD` POST_METHOD.
---<br>NOTE: If not specified,  HTTPMethod`GET_METHOD` GET_METHOD is used as default.
downloadFileAsync = function(url, file, useragent, method, postdata) return 0 end, 
---Get an HTTP request result (synchronous).
--- Usage example:
---```
---result = Network.requestString("http://www.website.com/file.txt")
---```
---@param url string The url where to send the HTTP request.
---@param useragent string Custom useragent to use <b>(optional)</b>.
---@param method integer Method to use to perform the HTTP request <b>(optional)</b>.
---@param postdata string POST data to send with the HTTP request <b>(optional)</b>.
---@return string result The HTTP request result.
---<br>NOTE: <b>postdata</b> will work only with <b>method</b> set to  HTTPMethod`POST_METHOD` POST_METHOD.
---<br>NOTE: If not specified,  HTTPMethod`GET_METHOD` GET_METHOD is used as default.
requestString = function(url, useragent, method, postdata) return "" end, 
---Get an HTTP request result (asynchronous).
--- Usage example:
---```
---Network.requestStringAsync("http://www.website.com/file.txt")
---```
---@param url string The url where to send the HTTP request.
---@param useragent string Custom useragent to use <b>(optional)</b>.
---@param method integer Method to use to perform the HTTP request <b>(optional)</b>.
---@param postdata string POST data to send with the HTTP request <b>(optional)</b>.
---<br>NOTE: <b>postdata</b> will work only with <b>method</b> set to  HTTPMethod`POST_METHOD` POST_METHOD.
---<br>NOTE: If not specified,  HTTPMethod`GET_METHOD` GET_METHOD is used as default.
requestStringAsync = function(url, useragent, method, postdata) return 0 end, 
}
---RegType: Registry types.<br>
---String type.
---@type integer
TYPE_STRING = 0
---RegType: Registry types.<br>
---Integer type.
---@type integer
TYPE_NUMBER = 0
---RegType: Registry types.<br>
---Binary Type.
---@type integer
TYPE_BINARY = 0
---
Registry = {
---Get a value for a given key.
--- Usage example:
---```
---flight_mode = Registry.getKey("/CONFIG/SYSTEM/", "flight_mode", TYPE_NUMBER)
---```
---@param category string The category from which to take the value.
---@param name string The key related to the value.
---@param type integer The type of the value.
---@return any result The requested value.
---<br>NOTE: This function is available only in unsafe mode.
getKey = function(category, name, type) return 0 end, 
---Get a value for a given system key.
--- Usage example:
---```
---val = Registry.getSysKey(0, TYPE_NUMBER)
---```
---@param id integer The identifier of the key.
---@param type integer The type of the value.
---@return any result The requested value.
---<br>NOTE: This function is available only in unsafe mode.
getSysKey = function(id, type) return 0 end, 
---Set a value for a given key.
--- Usage example:
---```
---flight_mode = Registry.setKey("/CONFIG/SYSTEM/", "flight_mode", TYPE_NUMBER, 1)
---```
---@param category string The category from which to take the value.
---@param name string The key related to the value.
---@param type integer The type of the value.
---@param value integer The value to set.
---@param size integer The size of the value <b>(optional)</b>.
---<br>NOTE: This function is available only in unsafe mode.
setKey = function(category, name, type, value, size) return 0 end, 
}
---CameraType: Camera types.<br>
---Front camera
---@type integer
INNER_CAM = 0
---CameraType: Camera types.<br>
---Retro camera
---@type integer
OUTER_CAM = 0
---CameraRes: Camera resolutions.<br>
---VGA (640x480) resolution
---@type integer
VGA_RES = 0
---CameraRes: Camera resolutions.<br>
---QVGA (320x240) resolution
---@type integer
QVGA_RES = 0
---CameraRes: Camera resolutions.<br>
---QQVGA (160x120) resolution
---@type integer
QQVGA_RES = 0
---CameraRes: Camera resolutions.<br>
---CIF (352x288) resolution
---@type integer
CIF_RES = 0
---CameraRes: Camera resolutions.<br>
---QCIF (176x144) resolution
---@type integer
QCIF_RES = 0
---CameraRes: Camera resolutions.<br>
---PSP (480x272) resolution
---@type integer
PSP_RES = 0
---CameraRes: Camera resolutions.<br>
---NGP (640x360) resolution
---@type integer
NGP_RES = 0
---CameraAntiFlick: Camera antiflicker modes.<br>
---Automatic Antiflicker
---@type integer
ANTIFLICKER_AUTO = 0
---CameraAntiFlick: Camera antiflicker modes.<br>
---50Hz Antiflicker
---@type integer
ANTIFLICKER_50HZ = 0
---CameraAntiFlick: Camera antiflicker modes.<br>
---60Hz Antiflicker
---@type integer
ANTIFLICKER_60HZ = 0
---CameraISO: Camera ISO speed mode.<br>
---Automatic ISO speed mode
---@type integer
ISO_AUTO = 0
---CameraISO: Camera ISO speed mode.<br>
---100/21 ISO speed mode
---@type integer
ISO_100 = 0
---CameraISO: Camera ISO speed mode.<br>
---100/24 ISO speed mode
---@type integer
ISO_200 = 0
---CameraISO: Camera ISO speed mode.<br>
---100/27 ISO speed mode
---@type integer
ISO_400 = 0
---CameraWB: Camera White Balance mode.<br>
---Automatic White Balance mode
---@type integer
WB_AUTO = 0
---CameraWB: Camera White Balance mode.<br>
---Daylight White Balance mode
---@type integer
WB_DAYLIGHT = 0
---CameraWB: Camera White Balance mode.<br>
---Cool White Fluorescent mode
---@type integer
WB_CWF = 0
---CameraWB: Camera White Balance mode.<br>
---Standard Light Source A mode
---@type integer
WB_SLSA = 0
---CameraBacklight: Camera Backlight mode.<br>
---Backlight disabled
---@type integer
BACKLIGHT_OFF = 0
---CameraBacklight: Camera Backlight mode.<br>
---Backlight enabled
---@type integer
BACKLIGHT_ON = 0
---CameraNightmode: Camera Nightmode mode.<br>
---Nightmode disabled
---@type integer
NIGHTMODE_OFF = 0
---CameraNightmode: Camera Nightmode mode.<br>
---Nightmode for 10 lux or below
---@type integer
NIGHTMODE_LOW = 0
---CameraNightmode: Camera Nightmode mode.<br>
---Nightmode for 100 lux or below
---@type integer
NIGHTMODE_MED = 0
---CameraNightmode: Camera Nightmode mode.<br>
---Nightmode for over 100 lux
---@type integer
NIGHTMODE_HIGH = 0
---CameraReverse: Camera Reverse mode.<br>
---Reverse mode disabled
---@type integer
REVERSE_OFF = 0
---CameraReverse: Camera Reverse mode.<br>
---Mirror reverse mode
---@type integer
REVERSE_MIRROR = 0
---CameraReverse: Camera Reverse mode.<br>
---Flip reverse mode
---@type integer
REVERSE_FLIP = 0
---CameraReverse: Camera Reverse mode.<br>
---Flip and Mirror reverse mode
---@type integer
REVERSE_BOTH = 0
---CameraEffect: Camera effects.<br>
---No effect
---@type integer
EFFECT_NONE = 0
---CameraEffect: Camera effects.<br>
---Negative effect
---@type integer
EFFECT_NEGATIVE = 0
---CameraEffect: Camera effects.<br>
---Black and White effect
---@type integer
EFFECT_BLACKWHITE = 0
---CameraEffect: Camera effects.<br>
---Sepia effect
---@type integer
EFFECT_SEPIA = 0
---CameraEffect: Camera effects.<br>
---Blue Neon effect
---@type integer
EFFECT_BLUE = 0
---CameraEffect: Camera effects.<br>
---Red Neon effect
---@type integer
EFFECT_RED = 0
---CameraEffect: Camera effects.<br>
---Green Neon effect
---@type integer
EFFECT_GREEN = 0
---
Camera = {
---Init camera hardware.
--- Usage example:
---```
---Camera.init(INNER_CAM, VGA_RES, 30)
---```
---@param type integer Camera to init.
---@param resolution integer Output resolution.
---@param framerate integer Output framerate.
---<br>NOTE: <b>framerate</b> must be between 3 and 120.
---<br>NOTE: <b>framerate</b> can be set to 120 only with  CameraRes`QVGA_RES` QVGA_RES, CameraRes`QQVGA_RES` QQVGA_RES or  CameraRes`CIF_RES` CIF_RES as <b>resolution</b>.
init = function(type, resolution, framerate) return 0 end, 
---Terminate camera hardware.
--- Usage example:
---```
---Camera.term()
---```
term = function() return 0 end, 
---Return current camera output as image.
--- Usage example:
---```
---img = Camera.getOutput()
---```
---<br>NOTE: The returned image became invalid when Camera.term is called.
getOutput = function() return 0 end, 
---Set camera brightness.
--- Usage example:
---```
---Camera.setBrightness(200)
---```
---@param value integer Value to set.
---<br>NOTE: <b>value</b> must be between 0 and 255.
setBrightness = function(value) return 0 end, 
---Get current camera brightness.
--- Usage example:
---```
---brightness = Camera.getBrightness()
---```
---@return integer result The current camera brightness.
getBrightness = function() return 0 end, 
---Set camera saturation.
--- Usage example:
---```
---Camera.setSaturation(2.0)
---```
---@param value integer Value to set.
---<br>NOTE: <b>value</b> must be between 0.0 and 4.0.
setSaturation = function(value) return 0 end, 
---Get current camera saturation.
--- Usage example:
---```
---saturation = Camera.getSaturation()
---```
---@return integer result The current camera saturation.
getSaturation = function() return 0 end, 
---Set camera sharpness percentage.
--- Usage example:
---```
---Camera.setSharpness(100)
---```
---@param value integer Value to set.
---<br>NOTE: <b>value</b> must be between 100 and 400.
setSharpness = function(value) return 0 end, 
---Get current camera sharpness.
--- Usage example:
---```
---sharpness = Camera.getSharpness()
---```
---@return integer result The current camera sharpness.
getSharpness = function() return 0 end, 
---Set camera contrast.
--- Usage example:
---```
---Camera.setContrast(200)
---```
---@param value integer Value to set.
---<br>NOTE: <b>value</b> must be between 0 and 255.
setContrast = function(value) return 0 end, 
---Get current camera contrast.
--- Usage example:
---```
---contrast = Camera.getBrightness()
---```
---@return integer result The current camera contrast.
getContrast = function() return 0 end, 
---Set camera reverse mode.
--- Usage example:
---```
---Camera.setReverse(REVERSE_FLIP)
---```
---@param mode integer Mode to set.
setReverse = function(mode) return 0 end, 
---Get current camera reverse mode.
--- Usage example:
---```
---mode = Camera.getReverse()
---```
---@return integer result The current camera reverse mode.
getReverse = function() return 0 end, 
---Set camera effect.
--- Usage example:
---```
---Camera.setEffect(EFFECT_SEPIA)
---```
---@param effect integer Effect to set.
---<br>NOTE: <b>value</b> must be between 0 and 255.
setEffect = function(effect) return 0 end, 
---Get current camera effect.
--- Usage example:
---```
---effect = Camera.getEffect()
---```
---@return integer result The current camera effect.
getEffect = function() return 0 end, 
---Set camera zoom.
--- Usage example:
---```
---Camera.setZoom(200)
---```
---@param value integer Value to set.
---<br>NOTE: <b>value</b> must be between 0 and 255.
setZoom = function(value) return 0 end, 
---Get current camera zoom.
--- Usage example:
---```
---zoom = Camera.getZoom()
---```
---@return integer result The current camera zoom.
getZoom = function() return 0 end, 
---Set camera antiflicker mode.
--- Usage example:
---```
---Camera.setAntiFlicker(ANTIFLICKER_50HZ)
---```
---@param mode integer Mode to set.
setAntiFlicker = function(mode) return 0 end, 
---Get current camera antiflicker mode.
--- Usage example:
---```
---mode = Camera.getAntiflicker()
---```
---@return integer result The current camera antiflicker mode.
getAntiFlicker = function() return 0 end, 
---Set camera ISO speed mode.
--- Usage example:
---```
---Camera.setISO(ISO_AUTO)
---```
---@param mode integer Mode to set.
setISO = function(mode) return 0 end, 
---Get current camera ISO speed mode.
--- Usage example:
---```
---mode = Camera.getISO()
---```
---@return integer result The current camera ISO speed mode.
getISO = function() return 0 end, 
---Set camera gain.
--- Usage example:
---```
---Camera.setGain(5)
---```
---@param value integer Value to set.
---<br>NOTE: <b>value</b> must be between 0 and 16.
setGain = function(value) return 0 end, 
---Get current camera gain.
--- Usage example:
---```
---gain = Camera.getGain()
---```
---@return integer result The current camera gain.
getGain = function() return 0 end, 
---Set camera white balance mode.
--- Usage example:
---```
---Camera.setWhiteBalance(WB_SLSA)
---```
---@param mode integer Mode to set.
setWhiteBalance = function(mode) return 0 end, 
---Get current camera white balance mode.
--- Usage example:
---```
---mode = Camera.getWhiteBalance()
---```
---@return integer result The current camera white balance mode.
getWhiteBalance = function() return 0 end, 
---Set camera backlight mode.
--- Usage example:
---```
---Camera.setBacklight(BACKLIGHT_ON)
---```
---@param mode integer Mode to set.
setBacklight = function(mode) return 0 end, 
---Get current camera backlight mode.
--- Usage example:
---```
---mode = Camera.getBacklight()
---```
---@return integer result The current camera backlight mode.
getBacklight = function() return 0 end, 
---Set camera nightmode mode.
--- Usage example:
---```
---Camera.setNightmode(NIGHTMODE_LOW)
---```
---@param mode integer Mode to set.
setNightmode = function(mode) return 0 end, 
---Get current camera nightmode mode.
--- Usage example:
---```
---mode = Camera.getNightmode()
---```
---@return integer result The current camera nightmode mode.
getNightmode = function() return 0 end, 
}
---PlayMode: Play modes for video playback.<br>
---Normal speed with audio
---@type integer
NORMAL_MODE = 0
---PlayMode: Play modes for video playback.<br>
---Fast Forward at 2x speed without audio
---@type integer
FAST_FORWARD_2X_MODE = 0
---PlayMode: Play modes for video playback.<br>
---Fast Forward at 4x speed without audio
---@type integer
FAST_FORWARD_4X_MODE = 0
---PlayMode: Play modes for video playback.<br>
---Fast Forward at 8x speed without audio
---@type integer
FAST_FORWARD_8X_MODE = 0
---PlayMode: Play modes for video playback.<br>
---Fast Forward at 16x speed without audio
---@type integer
FAST_FORWARD_16X_MODE = 0
---PlayMode: Play modes for video playback.<br>
---Fast Forward at 32x speed without audio
---@type integer
FAST_FORWARD_32X_MODE = 0
---
Video = {
---Init video sub-system.
--- Usage example:
---```
---Video.init()
---```
init = function() return 0 end, 
---Terminate video sub-system.
--- Usage example:
---```
---Video.term()
---```
term = function() return 0 end, 
---Open an MP4 video file.
--- Usage example:
---```
---Video.open("app0:/video.mp4", false)
---```
---@param filename string Filepath of the file to reproduce.
---@param loop boolean If true, playback will loop <b>(optional)</b>.
open = function(filename, loop) return 0 end, 
---Close the current video playback.
--- Usage example:
---```
---Video.close()
---```
close = function() return 0 end, 
---Get the current video frame as image.
--- Usage example:
---```
---frame = Video.getOutput()
---if frame ~= 0 then
---Graphics.drawImage(0, 0, frame)
---end
---```
---@return integer result The current video frame, 0 if no frame is available.
---<br>NOTE: Returned image became invalid when `Video.term` is called.
getOutput = function() return 0 end, 
---Pause current video playback.
--- Usage example:
---```
---Video.pause()
---```
pause = function() return 0 end, 
---Resume current video playback.
--- Usage example:
---```
---Video.resume()
---```
resume = function() return 0 end, 
---Get current playback state.
--- Usage example:
---```
---if Video.isPlaying() then
---Video.pause()
---end
---```
---@return boolean result true if playing, false otherwise.
isPlaying = function() return false end, 
---Set internal volume for current video playback.
--- Usage example:
---```
---Video.setVolume(100)
---```
---@param volume integer Volume value to set.
---<br>NOTE: <b>volume</b> must be in a range of 0 and 32767.
setVolume = function(volume) return 0 end, 
---Get internal volume for current video playback.
--- Usage example:
---```
---vol = Volume.getVolume()
---```
---@return integer result Volume value of the current video playback.
getVolume = function() return 0 end, 
---Get current time for current video playback.
--- Usage example:
---```
---t = Volume.getTime()
---```
---@return integer result Current time position in the video playback in milliseconds.
getTime = function() return 0 end, 
---Jump to a specific position for current video playback.
--- Usage example:
---```
---Video.jumpToTime(Video.getTime() + 5000)
---```
---@param time integer The position in milliseconds where to jump in the video playback.
jumpToTime = function(time) return 0 end, 
---Set play mode for current video playback.
--- Usage example:
---```
---Video.setPlayMode(FAST_FORWARD_16X_MODE)
---```
---@param mode integer The mode to set.
setPlayMode = function(mode) return 0 end, 
---Open a subtitles file for current video playback.
--- Usage example:
---```
---Video.openSubs("ux0:data/subtitles.vtt")
---```
---@param fname string The file to use as subtitles source.
---<br>NOTE: Supported subtitles formats: .srt, .vtt.
openSubs = function(fname) return 0 end, 
---Close currently opened subtitles file.
--- Usage example:
---```
---Video.closeSubs()
---```
closeSubs = function() return 0 end, 
---Get current available subtitles for the video playback.
--- Usage example:
---```
---Graphics.debugPrint(20, 20, Video.getSubs(), Color.new(255, 255, 255))
---```
---@return string result Subtitles matching current video playtime from the opened subtitles file.
getSubs = function() return "" end, 
}
---Module that handles colors and their management.
Color = {
---Create a new color
---@param r integer Red value
---@param g integer Green value
---@param b integer Blue value
---@param a? integer Alpha Value (optional)
---@return integer result The combined RGBA value
new = function (r, g, b, a) return 0 end,
---Return the R channel value of a color.
--- Usage example:
---```
---r = Color.getR(my_color)
---```
---@param clr integer A color created with `Color.new`.
---@return integer result The R channel value of the color.
getR = function(clr) return 0 end, 
---Return the G channel value of a color.
--- Usage example:
---```
---g = Color.getG(my_color)
---```
---@param clr integer A color created with `Color.new`.
---@return integer result The G channel value of the color.
getG = function(clr) return 0 end, 
---Return the B channel value of a color.
--- Usage example:
---```
---b = Color.getB(my_color)
---```
---@param clr integer A color created with `Color.new`.
---@return integer result The B channel value of the color.
getB = function(clr) return 0 end, 
---Return the A channel value of a color.
--- Usage example:
---```
---a = Color.getA(my_color)
---```
---@param clr integer A color created with `Color.new`.
---@return integer result The A channel value of the color.
getA = function(clr) return 0 end, 
}
---Module that handles basic screen related stuffs.
Screen = {
---Clear the screen framebuffer.
--- Usage example:
---```
---Screen.clear()
---```
---@param clr integer Color of the screen after the clear <B>(optional)</B>.
---<br>NOTE: If clr is passed, that color will be used for successive calls too.
---<br>NOTE: This function must be called during rendering phase (See `Graphics`).
clear = function(clr) return 0 end, 
---Flip the screen.
--- Usage example:
---```
---Screen.flip()
---```
flip = function() return 0 end, 
---Get a pixel color from the screen framebuffer.
--- Usage example:
---```
---pixel_color = Screen.getPixel(5, 25)
---```
---@param x integer X coordinate of the pixel.
---@param y integer Y coordinate of the pixel.
---@return integer result The pixel color value (See `Color`).
getPixel = function(x, y) return 0 end, 
---Wait screen vertical synchronization (VSync).
--- Usage example:
---```
---Screen.waitVblankStart()
---```
waitVblankStart = function() return 0 end, 
}
---KeyMode: Keyboard modes to use with Keyboard.start.<br>
---Text mode
---@type integer
MODE_TEXT = 0
---KeyMode: Keyboard modes to use with Keyboard.start.<br>
---Password mode
---@type integer
MODE_PASSWORD = 0
---KeyType: Keyboard types to use with Keyboard.start.<br>
---Default type
---@type integer
TYPE_DEFAULT = 0
---KeyType: Keyboard types to use with Keyboard.start.<br>
---Latin encode type
---@type integer
TYPE_LATIN = 0
---KeyType: Keyboard types to use with Keyboard.start.<br>
---Basic byte type
---@type integer
TYPE_NUMBER = 0
---KeyType: Keyboard types to use with Keyboard.start.<br>
---Extended byte type
---@type integer
TYPE_NUMBER_EXT = 0
---KeyOption: Optional keyboard features usable.<br>
---Multiline keyboard
---@type integer
OPT_MULTILINE = 0
---KeyOption: Optional keyboard features usable.<br>
---Disabled auto-cap on first letter
---@type integer
OPT_NO_AUTOCAP = 0
---KeyOption: Optional keyboard features usable.<br>
---Disabled word assistant
---@type integer
OPT_NO_ASSISTANCE = 0
---
Keyboard = {
---Start a keyboard instance.
--- Usage example:
---```
---Keyboard.start("Insert a text", "Text", 512, TYPE_DEFAULT, MODE_TEXT, OPT_MULTILINE + OPT_NO_AUTOCAP)
---```
---@param title string The keyboard title.
---@param text string The keyboard initial text.
---@param length integer The text maximum length <b>(optional)</b>.
---@param type integer The keyboard type <b>(optional)</b>.
---@param mode integer The keyboard mode <b>(optional)</b>.
---@param opt integer Optional keyboard features to use <b>(optional)</b>.
start = function(title, text, length, type, mode, opt) return 0 end, 
---Get keyboard state.
--- Usage example:
---```
---state = Keyboard.getState()
---```
---@return integer result Current state of the system keyboard instance.
getState = function() return 0 end, 
---Get keyboard user input.
--- Usage example:
---```
---if Keyboard.getState() == FINISHED then
---result_text = Keyboard.getInput()
---end
---```
---@return string result The text entered by the user.
getInput = function() return "" end, 
---Close current system keyboard instance.
--- Usage example:
---```
---Keyboard.clear()
---```
clear = function() return 0 end, 
}
---NetProtocol: Network protocols.<br>
---TCP protocol
---@type integer
TCP_SOCKET = 0
---NetProtocol: Network protocols.<br>
---UDP protocol
---@type integer
UDP_SOCKET = 0
---
Socket = {
---Create a server socket.
--- Usage example:
---```
---sock = Socket.createServerSocket(5000, TCP_SOCKET)
---```
---@param port integer Port to use.
---@param protocol integer Protocol to use <b>(optional)</b>.
---@return integer result The created socket id.
---<br>NOTE: If not specified,  NetProtocol`TCP_SOCKET` TCP_SOCKET is used as default.
createServerSocket = function(port, protocol) return 0 end, 
---Connect to a server.
--- Usage example:
---```
---sock = Socket.connect("192.168.1.8", 5000)
---```
---@param host string Host to connect to.
---@param port integer Port to use.
---@param protocol integer Protocol to use <b>(optional)</b>.
---@return integer result A valid client socket id.
---<br>NOTE: If not specified,  NetProtocol`TCP_SOCKET` TCP_SOCKET is used as default.
connect = function(host, port, protocol) return 0 end, 
---Send data via socket.
--- Usage example:
---```
---Socket.send(sock, "Hello World!")
---```
---@param sock integer A valid socket id.
---@param data string Data to send.
---@return integer result Length of the sent data in bytes.
send = function(sock, data) return 0 end, 
---Send data via socket.
--- Usage example:
---```
---data = Socket.receive(sock, 32767)
---```
---@param sock integer A valid socket id.
---@param size integer Maximum size of the received data.
---@return string result The received data.
---<br>NOTE: The received data can be smaller than <b>size</b>.
receive = function(sock, size) return "" end, 
---Accept new connections for a server socket.
--- Usage example:
---```
---client = Socket.accept(server)
---```
---@param sock integer A valid server socket id.
---@return integer result A valid client socket id.
accept = function(sock) return 0 end, 
---Close a socket.
--- Usage example:
---```
---Socket.close(sock)
---```
---@param sock integer A valid socket id.
close = function(sock) return 0 end, 
}
---DevType: Device types. Possible results of Controls.getDeviceInfo.<br>
---Unpaired device
---@type integer
UNPAIRED_DEV = 0
---DevType: Device types. Possible results of Controls.getDeviceInfo.<br>
---PSVITA controller device
---@type integer
VITA_DEV = 0
---DevType: Device types. Possible results of Controls.getDeviceInfo.<br>
---Virtual controller device
---@type integer
VIRTUAL_DEV = 0
---DevType: Device types. Possible results of Controls.getDeviceInfo.<br>
---Dualshock 3 device
---@type integer
DS3_DEV = 0
---DevType: Device types. Possible results of Controls.getDeviceInfo.<br>
---Dualshock 4 device
---@type integer
DS4_DEV = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Digital Up button
---@type integer
SCE_CTRL_UP = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Digital Down button
---@type integer
SCE_CTRL_DOWN = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Digital Left button
---@type integer
SCE_CTRL_LEFT = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Digital Right button
---@type integer
SCE_CTRL_RIGHT = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Cross button
---@type integer
SCE_CTRL_CROSS = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Circle button
---@type integer
SCE_CTRL_CIRCLE = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Square button
---@type integer
SCE_CTRL_SQUARE = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Triangle button
---@type integer
SCE_CTRL_TRIANGLE = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---L Trigger button
---@type integer
SCE_CTRL_LTRIGGER = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---R Trigger button
---@type integer
SCE_CTRL_RTRIGGER = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Start button
---@type integer
SCE_CTRL_START = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Select button
---@type integer
SCE_CTRL_SELECT = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Power button
---@type integer
SCE_CTRL_POWER = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Volume Up button
---@type integer
SCE_CTRL_VOLUP = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---Volume Down button
---@type integer
SCE_CTRL_VOLDOWN = 0
---Ctrl: Available controls value.
---<br>NOTE: <b>SCE_CTRL_VOLUP</b>, <b>SCE_CTRL_VOLDOWN</b> and <b>SCE_CTRL_POWER</b> can be intercepted only with unsafe mode.<br>
---PS button
---@type integer
SCE_CTRL_PSBUTTON = 0
---
Controls = {
---Read pressed buttons.
--- Usage example:
---```
---pad = Controls.read()
---```
---@param port integer Device port to use <b>(optional)</b>.
---@return integer result Bitmask of the pressed buttons.
read = function(port) return 0 end, 
---Read left analog state.
--- Usage example:
---```
---x, y = Controls.readLeftAnalog()
---```
---@param port integer Device port to use <b>(optional)</b>.
---@return integer result X and Y values of left analog.
readLeftAnalog = function(port) return 0 end, 
---Read right analog state.
--- Usage example:
---```
---x, y = Controls.readRightAnalog()
---```
---@param port integer Device port to use <b>(optional)</b>.
---@return integer result X and Y values of right analog.
readRightAnalog = function(port) return 0 end, 
---Read touchscreen state.
--- Usage example:
---```
---x1, y1, x2, y2 = Controls.readTouch()
---```
---@return integer result Several sets of X and Y coordinates for every touch report.
---<br>NOTE: A maximum of 6 different touch reports can be detected.
readTouch = function() return 0 end, 
---Read rearpad state.
--- Usage example:
---```
---x1, y1, x2, y2 = Controls.readRetroTouch()
---```
---@return integer result Several sets of X and Y coordinates for every touch report.
---<br>NOTE: A maximum of 4 different touch reports can be detected.
readRetroTouch = function() return 0 end, 
---Check if a button is pressed.
--- Usage example:
---```
---pad = Controls.read()
---if Controls.check(pad, SCE_CTRL_CROSS) then
---pressed = true
---end
---```
---@param bitmask integer A controls bitmask returned by Controls.read.
---@param value integer A control value to check.
---@return boolean result true if pressed, false otherwise.
check = function(bitmask, value) return false end, 
---Changes vibration intensity for Dualshock devices.
--- Usage example:
---```
---Controls.rumble(0, 100, 100)
---```
---@param port integer Device port to use.
---@param small integer Intensity for small sensor.
---@param large integer Intensity for large sensor.
rumble = function(port, small, large) return 0 end, 
---Set lightbar color for Dualshock 4 devices.
--- Usage example:
---```
---Controls.setLightbar(0, Color.new(255, 255, 255))
---```
---@param port integer Device port to use.
---@param color integer An RGBA color value (See `Color`).
setLightbar = function(port, color) return 0 end, 
---Locks default PS button functionality.
--- Usage example:
---```
---Controls.lockHomeButton()
---```
lockHomeButton = function() return 0 end, 
---Unlocks default PS button functionality.
--- Usage example:
---```
---Controls.lockHomeButton()
---```
unlockHomeButton = function() return 0 end, 
---Get info about controllers.
--- Usage example:
---```
---ctrl = Controls.getDeviceInfo()
---ctrl_type = ctrl[1].type
---```
---@return table result A table showing info about the 5 available controllers (See the example above).
getDeviceInfo = function() return {} end, 
---Check if an headset is plugged in.
--- Usage example:
---```
---if Controls.headsetStatus() then
---headset = true
---end
---```
---@return boolean result true if plugged in, false otherwise.
---<br>NOTE: This function is available only in unsafe mode.
headsetStatus = function() return false end, 
---Return set controller enter button.
--- Usage example:
---```
---pad = Controls.read()
---SCE_CTRL_CONFIRM = Controls.getEnterButton()
---if Controls.check(pad, SCE_CTRL_CONFIRM) then
---accepted = yes
---end
---```
---@return integer result  Ctrl`SCE_CTRL_CROSS` SCE_CTRL_CROSS or  Ctrl`SCE_CTRL_CIRCLE` SCE_CTRL_CIRCLE.
getEnterButton = function() return 0 end, 
---Enable gyroscope sensor.
--- Usage example:
---```
---Controls.enableGyro()
---```
enableGyro = function() return 0 end, 
---Enable accelerometer sensor.
--- Usage example:
---```
---Controls.enableAccel()
---```
enableAccel = function() return 0 end, 
---Disable gyroscope sensor.
--- Usage example:
---```
---Controls.disableGyro()
---```
disableGyro = function() return 0 end, 
---Disable accelerometer sensor.
--- Usage example:
---```
---Controls.disableAccel()
---```
disableAccel = function() return 0 end, 
}
---Module that handles font writing stuffs.
Font = {
---Load a .ttf/.pgf/.pvf/.woff/.pfa/.pfb/.fnt/.bdf font file.
--- Usage example:
---```
---fnt = Font.load("app0:/font.ttf")
---```
---@param filename string The name of the font file
---@return integer result A valid font ID.
load = function(filename) return 0 end, 
---Unload a loaded font.
--- Usage example:
---```
---Font.unload(fnt)
---```
---@param font integer A valid font loaded with Font.load.
unload = function(font) return 0 end, 
---Set font size for drawing.
--- Usage example:
---```
---Font.setPixelSizes(fnt, 20)
---```
---@param font integer A valid font loaded with Font.load.
---@param size integer Size to set for Font.print calls in pixels.
setPixelSizes = function(font, size) return 0 end, 
---Calculate width for a given text and a given font.
--- Usage example:
---```
---width = Font.getTextWidth(fnt, "Hello World")
---```
---@param font integer A valid font loaded with Font.load.
---@param text string Text to calculate width of.
---@return integer result The text width in pixels.
getTextWidth = function(font, text) return 0 end, 
---Calculate height for a given text and a given font.
--- Usage example:
---```
---width = Font.getTextHeight(fnt, "Hello World")
---```
---@param font integer A valid font loaded with Font.load.
---@param text string Text to calculate width of.
---@return integer result The text height in pixels.
getTextHeight = function(font, text) return 0 end, 
---Print a text on screen using a font.
--- Usage example:
---```
---Font.print(fnt, 5, 10, "Hello World", Color.new(255, 255, 255))
---```
---@param font integer A valid font loaded with Font.load.
---@param x integer X starting coordinate for the print.
---@param y integer Y starting coordinate for the print.
---@param text string Text to print.
---@param color integer Color of the text (See `Color`).
print = function(font, x, y, text, color) return 0 end, 
}
---IOFlags: I/O attributes to use with `System.openFile`.<br>
---Read attribute.
---@type integer
FREAD = 0
---IOFlags: I/O attributes to use with `System.openFile`.<br>
---Write attribute.
---@type integer
FWRITE = 0
---IOFlags: I/O attributes to use with `System.openFile`.<br>
---Read/Write attribute.
---@type integer
FRDWR = 0
---IOFlags: I/O attributes to use with `System.openFile`.<br>
---Create/Write attribute.
---@type integer
FCREATE = 0
---IOSeek: I/O seek modes to use with `System.seekFile`.<br>
---Starts from the begin of the file.
---@type integer
SET = 0
---IOSeek: I/O seek modes to use with `System.seekFile`.<br>
---Starts from current position.
---@type integer
CUR = 0
---IOSeek: I/O seek modes to use with `System.seekFile`.<br>
---Starts from the end of the file.
---@type integer
END = 0
---PowerTimer: Power management timer features.<br>
---Automatic console suspension.
---@type integer
AUTO_SUSPEND_TIMER = 0
---PowerTimer: Power management timer features.<br>
---Automatic screen disabling.
---@type integer
SCREEN_OFF_TIMER = 0
---PowerTimer: Power management timer features.<br>
---Automatic screen dimming.
---@type integer
SCREEN_DIMMING_TIMER = 0
---ImgFmt: Image format modes to use with `System.takeScreenshot`.<br>
---32bpp BMP format.
---@type integer
FORMAT_BMP = 0
---ImgFmt: Image format modes to use with `System.takeScreenshot`.<br>
---JPG format.
---@type integer
FORMAT_JPG = 0
---ImgFmt: Image format modes to use with `System.takeScreenshot`.<br>
---8bpp paletted PNG format.
---@type integer
FORMAT_PNG = 0
---BtnMode: Buttons schemes for `System.setMessage`.<br>
---No buttons.
---@type integer
BUTTON_NONE = 0
---BtnMode: Buttons schemes for `System.setMessage`.<br>
---OK button only.
---@type integer
BUTTON_OK = 0
---BtnMode: Buttons schemes for `System.setMessage`.<br>
---CANCEL button only.
---@type integer
BUTTON_CANCEL = 0
---BtnMode: Buttons schemes for `System.setMessage`.<br>
---OK and CANCEL buttons.
---@type integer
BUTTON_OK_CANCEL = 0
---BtnMode: Buttons schemes for `System.setMessage`.<br>
---YES and NO buttons.
---@type integer
BUTTON_YES_NO = 0
---DlgState: Dialog states for system messages and system keyboard.<br>
---Dialog running.
---@type integer
RUNNING = 0
---DlgState: Dialog states for system messages and system keyboard.<br>
---Dialog finished successfully.
---@type integer
FINISHED = 0
---DlgState: Dialog states for system messages and system keyboard.<br>
---Dialog canceled by user.
---@type integer
CANCELED = 0
---MntPerm: Mount permissions for partition mounting.<br>
---Read only permissions.
---@type integer
READ_ONLY = 0
---MntPerm: Mount permissions for partition mounting.<br>
---Read/Write permissions.
---@type integer
READ_WRITE = 0
---
System = {
---Open a file.
--- Usage example:
---```
---handle = System.openFile("ux0:/data/file.txt", FREAD)
---```
---@param filename string Filename to be opened.
---@param flags integer An attribute flag.
---@return integer result A valid file handle.
openFile = function(filename, flags) return 0 end, 
---Write into an opened file.
--- Usage example:
---```
---System.writeFile(handle, "Test", 4)
---```
---@param handle integer A file handle opened with `System.openFile`.
---@param text string The text to write on file.
---@param len integer Length of the text.
writeFile = function(handle, text, len) return 0 end, 
---Read from an opened file.
--- Usage example:
---```
---text = System.readFile(handle, 4)
---```
---@param handle integer A file handle opened with `System.openFile`.
---@param len integer Length of the string to read in bytes.
---@return string result The read string.
readFile = function(handle, len) return "" end, 
---Move cursor of an opened file.
--- Usage example:
---```
---System.seekFile(handle, 0, END)
---```
---@param handle integer A file handle opened with `System.openFile`.
---@param pos integer Position to set.
---@param seek integer Start point for the position.
seekFile = function(handle, pos, seek) return 0 end, 
---Calculate size of an opened file in bytes.
--- Usage example:
---```
---size = System.sizeFile(handle)
---```
---@param handle integer A file handle opened with `System.openFile`.
---@return integer result Filesize in bytes.
sizeFile = function(handle) return 0 end, 
---Extract info of a file/directory.
--- Usage example:
---```
---info = System.statFile("ux0:/data/file.txt")
---creation_year = info.creation_time.year
---last_access_year = info.access_time.year
---last_modification_year = info.mod_time.year
---is_directory = info.directory
---filesize = info.size
---```
---@param filename string Filename to be checked.
---@return table result A table with a proper set of info (Look at the sample above).
statFile = function(filename) return {} end, 
---Extract info of an opened file.
--- Usage example:
---```
---info = System.statOpenedFile(handle)
---creation_year = info.creation_time.year
---last_access_year = info.access_time.year
---last_modification_year = info.mod_time.year
---is_directory = info.directory
---filesize = info.size
---```
---@param handle integer A file handle opened with `System.openFile`.
---@return table result A table with a proper set of info (Look at the sample above).
statOpenedFile = function(handle) return {} end, 
---Close an opened file.
--- Usage example:
---```
---System.closeFile(handle)
---```
---@param handle integer A file handle opened with `System.openFile`.
closeFile = function(handle) return 0 end, 
---Check if a file exists.
--- Usage example:
---```
---if System.doesFileExist("ux0:/data/file.txt") then
---handle = System.openFile("ux0:/data/file.txt", FREAD)
---end
---```
---@param filename string Filename to be checked.
---@return boolean result true if exists, false otherwise.
doesFileExist = function(filename) return false end, 
---Check if a folder exists.
--- Usage example:
---```
---if System.doesDirExist("ux0:/data") then
---list = System.listDirectory("ux0:/data")
---end
---```
---@param dirname string Folder name to be checked.
---@return boolean result true if exists, false otherwise.
doesDirExist = function(dirname) return false end, 
---Rename or move a file.
--- Usage example:
---```
---System.rename("ux0:/data/old.txt", "ux0:/data/new.txt")
---```
---@param filename string Filename to be renamed.
---@param filename2 string New filename.
rename = function(filename, filename2) return 0 end, 
---Copy a file.
--- Usage example:
---```
---System.copyFile("ux0:/data/old.txt", "ux0:/data/new.txt")
---```
---@param filename string Filename to be copied.
---@param filename2 string New filename.
copyFile = function(filename, filename2) return 0 end, 
---Delete a file.
--- Usage example:
---```
---System.deleteFile("ux0:/data/file.txt")
---```
---@param filename string Filename to be removed.
deleteFile = function(filename) return 0 end, 
---Delete a directory.
--- Usage example:
---```
---System.deleteDirectory("ux0:/data/dir")
---```
---@param dirname string Path to be removed.
deleteDirectory = function(dirname) return 0 end, 
---Create a new directory.
--- Usage example:
---```
---System.createDirectory("ux0:/data/dir")
---```
---@param dirname string Path to be created.
createDirectory = function(dirname) return 0 end, 
---List a directory contents.
--- Usage example:
---```
---files = System.listDirectory("ux0:/data/dir")
---name = files[0].name
---size = files[0].size
---is_directory = files[0].directory
---```
---@param dirname string Path to be listed.
---@return table result A table with the listed files info (See the example above).
listDirectory = function(dirname) return {} end, 
---Close the interpreter.
--- Usage example:
---```
---System.exit()
---```
exit = function() return 0 end, 
---Get unspoofed system firmware version.
--- Usage example:
---```
---fw = System.getFirmware()
---```
---@return string result The unspoofed system firmware version.
---<br>NOTE: This function is available only in unsafe mode.
getFirmware = function() return "" end, 
---Get spoofed system firmware version.
--- Usage example:
---```
---fw = System.getSpoofedFirmware()
---```
---@return string result The spoofed system firmware version.
getSpoofedFirmware = function() return "" end, 
---Get factory system firmware version.
--- Usage example:
---```
---fw = System.getFactoryFirmware()
---```
---@return string result The factory system firmware version.
---<br>NOTE: This function is available only in unsafe mode.
getFactoryFirmware = function() return "" end, 
---Sleep the application for a certain time.
--- Usage example:
---```
---System.wait(1000000)
---```
---@param msecs integer Time to wait in microseconds.
wait = function(msecs) return 0 end, 
---Check if the battery is under charge.
--- Usage example:
---```
---if System.isBatteryCharging() then
---Graphics.debugPrint(0, 0, "Battery is charging", Color.new(255, 255, 255))
---end
---```
---@return boolean result true if charging, false otherwise.
isBatteryCharging = function() return false end, 
---Get current battery life percentage.
--- Usage example:
---```
---life = System.getBatteryPercentage()
---```
---@return integer result The battery life percentage.
getBatteryPercentage = function() return 0 end, 
---Get current battery life.
--- Usage example:
---```
---life = System.getBatteryLife()
---```
---@return integer result The battery life in minutes.
getBatteryLife = function() return 0 end, 
---Get current battery capacity.
--- Usage example:
---```
---cap = System.getBatteryCapacity()
---```
---@return integer result The battery capacity in mAh.
getBatteryCapacity = function() return 0 end, 
---Get full battery capacity.
--- Usage example:
---```
---cap_max = System.getBatteryFullCapacity()
---```
---@return integer result The battery full capacity in mAh.
getBatteryFullCapacity = function() return 0 end, 
---Get battery temperature.
--- Usage example:
---```
---temp = System.getBatteryTemp()
---```
---@return integer result The battery temperature in Celsius.
getBatteryTemp = function() return 0 end, 
---Get battery voltage.
--- Usage example:
---```
---voltage = System.getBatteryVolt()
---```
---@return integer result The battery voltage in mV.
getBatteryVolt = function() return 0 end, 
---Get battery state of health percentage.
--- Usage example:
---```
---soh = System.getBatteryHealth()
---```
---@return integer result The battery state of health percentage.
getBatteryHealth = function() return 0 end, 
---Get battery cycles count.
--- Usage example:
---```
---cycles = System.getBatteryCycles()
---```
---@return integer result The battery cycles count.
getBatteryCycles = function() return 0 end, 
---Disable a power management timer feature.
--- Usage example:
---```
---System.disableTimer(SCREEN_DIMMING_TIMER)
---```
---@param timer integer The timer feature to disable.
disableTimer = function(timer) return 0 end, 
---Enable a power management timer feature.
--- Usage example:
---```
---System.enableTimer(SCREEN_DIMMING_TIMER)
---```
---@param timer integer The timer feature to enable.
enableTimer = function(timer) return 0 end, 
---Reset a power management timer feature.
--- Usage example:
---```
---System.resetTimer(SCREEN_DIMMING_TIMER)
---```
---@param timer integer The timer feature to reset.
resetTimer = function(timer) return 0 end, 
---Set CPU clock speed.
--- Usage example:
---```
---System.setCpuSpeed(444)
---```
---@param clock integer The clock to set in Mhz.
---<br>NOTE: Clock must be between 0 and 444.
setCpuSpeed = function(clock) return 0 end, 
---Set GPU clock speed.
--- Usage example:
---```
---System.setGpuSpeed(222)
---```
---@param clock integer The clock to set in Mhz.
---<br>NOTE: Clock must be between 0 and 222.
setGpuSpeed = function(clock) return 0 end, 
---Set BUS clock speed.
--- Usage example:
---```
---System.setBusSpeed(222)
---```
---@param clock integer The clock to set in Mhz.
---<br>NOTE: Clock must be between 0 and 222.
setBusSpeed = function(clock) return 0 end, 
---Get CPU clock speed.
--- Usage example:
---```
---clock = System.getCpuSpeed()
---```
---@return integer result The CPU clock speed in Mhz.
getCpuSpeed = function() return 0 end, 
---Get GPU clock speed.
--- Usage example:
---```
---clock = System.getGpuSpeed()
---```
---@return integer result The GPU clock speed in Mhz.
getGpuSpeed = function() return 0 end, 
---Get BUS clock speed.
--- Usage example:
---```
---clock = System.getBusSpeed()
---```
---@return integer result The BUS clock speed in Mhz.
getBusSpeed = function() return 0 end, 
---Get GPU Crossbar clock speed.
--- Usage example:
---```
---clock = System.getGpuXbarSpeed()
---```
---@return integer result The GPU Crossbar clock speed in Mhz.
getGpuXbarSpeed = function() return 0 end, 
---Launches a binary file.
--- Usage example:
---```
---System.launchEboot("app0:/updater.bin")
---```
---@param filename string The file to start.
---<br>NOTE: The binary file to launch must be in app0 partition.
launchEboot = function(filename) return 0 end, 
---Launches an installed application.
--- Usage example:
---```
---System.launchApp("MLCL00001")
---```
---@param titleid string The title ID of the application to start.
launchApp = function(titleid) return 0 end, 
---Get free space for a given device.
--- Usage example:
---```
---Graphics.debugPrint(5, 5, System.getFreeSpace("ux0:") .. "/" .. System.getTotalSpace("ux0:"), Color.new(255, 255, 255))
---```
---@param dev string The device name.
getFreeSpace = function(dev) return 0 end, 
---Get total space for a given device.
--- Usage example:
---```
---Graphics.debugPrint(5, 5, System.getFreeSpace("ux0:") .. "/" .. System.getTotalSpace("ux0:"), Color.new(255, 255, 255))
---```
---@param dev string The device name.
getTotalSpace = function(dev) return 0 end, 
---Get console time.
--- Usage example:
---```
---h,m,s = System.getTime()
---```
---@return integer result Three values owning hours, minutes and seconds.
getTime = function() return 0 end, 
---Get console date.
--- Usage example:
---```
---day_num, d, m, y = System.getDate()
---if day_num == 1 then
---day_name = "Monday"
---end
---```
---@return integer result Four values owning day value, day, month, year.
getDate = function() return 0 end, 
---Get account username.
--- Usage example:
---```
---username = System.getUsername()
---```
---@return string result The username set on the running console account.
getUsername = function() return "" end, 
---Get console language.
--- Usage example:
---```
---lang = System.getLanguage()
---```
---@return integer result The language ID currently set on the console.
---<br>NOTE: For the available language IDs look at <a href="https://www.vitadevwiki.com/vita/Languages">this</a>.
getLanguage = function() return 0 end, 
---Get console model.
--- Usage example:
---```
---model = System.getModel()
---```
---@return integer result 0x10000 if PSVITA, 0x20000 if PSTV.
getModel = function() return 0 end, 
---Get console unique PsId.
--- Usage example:
---```
---psid = System.getPsId()
---```
---@return string result The console unique PsId.
getPsId = function() return "" end, 
---Get running application title.
--- Usage example:
---```
---title = System.getTitle()
---```
---@return string result The running application title.
getTitle = function() return "" end, 
---Get running application title ID.
--- Usage example:
---```
---title_id = System.getTitleID()
---```
---@return string result The running application title ID.
getTitleID = function() return "" end, 
---Extract info from an SFO file.
--- Usage example:
---```
---info = System.extractSfo("app0:/sce_sys/param.sfo")
---app_version = info.version
---app_title = info.title
---app_short_title = info.short_title
---app_category = info.category
---app_titleid = info.titleid
---```
---@param filename string The filename to extract info from.
---@return table result A table with a proper set of info (Look at the sample above).
---<br>NOTE: This function can be used also to extract info from PARAM.SFO bundled inside PBP files.
extractSfo = function(filename) return {} end, 
---Extract a PBP file (synchronous).
--- Usage example:
---```
---System.extractPbp("app0:/files.zip", "ux0:/data/app_files")
---```
---@param filename string The filename to extract.
---@param dirname string The path where to extract files.
---<br>NOTE: If <b>dirname</b> doesn't exist, it will be automatically created.
extractPbp = function(filename, dirname) return 0 end, 
---Extract a ZIP file (synchronous).
--- Usage example:
---```
---System.extractZip("app0:/files.zip", "ux0:/data/app_files")
---```
---@param filename string The filename to extract.
---@param dirname string The path where to extract files.
---<br>NOTE: If <b>dirname</b> doesn't exist, it will be automatically created.
extractZip = function(filename, dirname) return 0 end, 
---Extract a specific file from a ZIP file (synchronous).
--- Usage example:
---```
---System.extractFromZip("app0:/files.zip", "image.jpg", "ux0:/data/app_files/my_image.jpg")
---```
---@param filename string The filename of the ZIP archive.
---@param file string The file to extract.
---@param destname string The filename where to extract file.
extractFromZip = function(filename, file, destname) return 0 end, 
---Extract a ZIP file (asynchronous).
--- Usage example:
---```
---System.extractZipAsync("app0:/files.zip", "ux0:/data/app_files")
---```
---@param filename string The filename to extract.
---@param dirname string The path where to extract files.
---<br>NOTE: If <b>dirname</b> doesn't exist, it will be automatically created.
extractZipAsync = function(filename, dirname) return 0 end, 
---Extract a specific file from a ZIP file (asynchronous).
--- Usage example:
---```
---System.extractFromZipAsync("app0:/files.zip", "image.jpg", "ux0:/data/app_files/my_image.jpg")
---```
---@param filename string The filename of the ZIP archive.
---@param file string The file to extract.
---@param destname string The filename where to extract file.
extractFromZipAsync = function(filename, file, destname) return 0 end, 
---Compress a file or a folder in a ZIP file (synchronous).
--- Usage example:
---```
---System.compressZip("app0:/sce_sys", "ux0:/data/file.zip", 9)
---```
---@param path string The filename or path to compress.
---@param filename string The filename of the resulting zip file.
---@param ratio integer The compression ratio to use <b>(optional)</b>.
---<br>NOTE: <b>ratio</b> must be between 0 and 9.
compressZip = function(path, filename, ratio) return 0 end, 
---Add a file or a folder in a ZIP file (synchronous).
--- Usage example:
---```
---System.addToZip("app0:/sce_sys/icon0.png", "ux0:/data/file.zip", "sce_sys", 9)
---```
---@param path string The filename or path to compress.
---@param filename string The filename of the resulting zip file.
---@param parent string The parent folder inside the zip file where to place the path.
---@param ratio integer The compression ratio to use <b>(optional)</b>.
---<br>NOTE: <b>ratio</b> must be between 0 and 9.
addToZip = function(path, filename, parent, ratio) return 0 end, 
---Get current state of an asynchronous task.
--- Usage example:
---```
---while System.getAsyncState() == 0 do
---running = true
---end
---running = false
---```
---@return integer result 0 if running, 1 if successfully finished, -1 otherwise.
getAsyncState = function() return 0 end, 
---Get result from a finished asynchronous task.
--- Usage example:
---```
---if System.getAsyncState() == 1 then
---res = System.getAsyncResult()
---end
---```
---@return string result A string with the result for Network.requestStringAsync() result, nil otherwise.
getAsyncResult = function() return "" end, 
---Take a screenshot.
--- Usage example:
---```
---System.takeScreenshot("ux0:/data/shot.jpg", FORMAT_JPG, 255)
---```
---@param filename string The filename of the screenshot output.
---@param format integer The format to use for the output file <b>(optional)</b>.
---@param ratio integer Compression ratio for JPG compression <b>(optional)</b>.
---<br>NOTE: <b>ratio</b> must be between 0 and 255.
takeScreenshot = function(filename, format, ratio) return 0 end, 
---Execute an URI call.
--- Usage example:
---```
---System.executeUri("psgm:play?titleid=MLCL00001")
---```
---@param uri string URI to exec.
executeUri = function(uri) return 0 end, 
---Reboot the console.
--- Usage example:
---```
---System.reboot()
---```
reboot = function() return 0 end, 
---Shutdown the console.
--- Usage example:
---```
---System.shutdown()
---```
shutdown = function() return 0 end, 
---Put the console in standby.
--- Usage example:
---```
---System.standby()
---```
standby = function() return 0 end, 
---Get if application is running in safe mode.
--- Usage example:
---```
---if System.isSafeMode() then
---mode = "safe"
---end
---```
---@return boolean result true if in safe mode, false otherwise.
isSafeMode = function() return false end, 
---Start a system message instance.
--- Usage example:
---```
---System.setMessage("Do you want to start this app?", false, BUTTON_YES_NO)
---```
---@param text string The text of the system message.
---@param progressbar boolean Progressbar mode.
---@param buttons integer Buttons scheme to use <b>(optional)</b>.
---<br>NOTE: If <b>progressbar</b> is true, <b>buttons</b> will not affect the system message.
setMessage = function(text, progressbar, buttons) return 0 end, 
---Get current system message instance state.
--- Usage example:
---```
---state = System.getMessageState()
---```
---@return integer result Current state of the system message instance.
getMessageState = function() return 0 end, 
---Set current progress for the system message instance.
--- Usage example:
---```
---System.setMessageProgress(10)
---```
---@param progress integer Progress percentage.
---<br>NOTE: This function affects only progressbar system messages.
---<br>NOTE: <b>progress</b> must be between 0 and 100.
setMessageProgress = function(progress) return 0 end, 
---Set a submessage for the system message instance.
--- Usage example:
---```
---System.setMessageProgMsg("10%%")
---```
---@param text string Submessage text to set.
---<br>NOTE: This function affects only progressbar system messages.
setMessageProgMsg = function(text) return 0 end, 
---Close the current system message instance.
--- Usage example:
---```
---System.closeMessage()
---```
closeMessage = function() return 0 end, 
---Unmount an already mounted partition.
--- Usage example:
---```
---System.unmountPartition(0x300)
---```
---@param idx integer The index number of the partition.
---<br>NOTE: For the index value, look at VSH Mount ID <a href="https://wiki.henkaku.xyz/vita/SceIofilemgr#Mount_Points">here</a>.
---<br>NOTE: This function is available only in unsafe mode.
unmountPartition = function(idx) return 0 end, 
---Mount an unmounted partition.
--- Usage example:
---```
---System.mountPartition(0x300, READ_WRITE)
---```
---@param idx integer The index number of the partition.
---@param perms integer Permissions to set for the mounted partition.
---<br>NOTE: For the index value, look at VSH Mount ID <a href="https://wiki.henkaku.xyz/vita/SceIofilemgr#Mount_Points">here</a>.
---<br>NOTE: This function is available only in unsafe mode.
mountPartition = function(idx, perms) return 0 end, 
---Install an extracted app.
--- Usage example:
---```
---System.installApp("ux0:/vitaQuake")
---```
---@param dir string The path to the extracted app.
---<br>NOTE: This function is available only in unsafe mode.
installApp = function(dir) return 0 end, 
---Uninstall an installed app.
--- Usage example:
---```
---System.uninstallApp("GTAVCECTY")
---```
---@param titleid string The titleid of the app to uninstall.
---<br>NOTE: This function is available only in unsafe mode.
uninstallApp = function(titleid) return 0 end, 
---Check if an app is installed.
--- Usage example:
---```
---if System.doesAppExist("GTAVCECTY") then
---System.uninstallApp("GTAVCECTY")
---end
---```
---@param titleid string The titleid of the app to check.
---@return boolean result true if installed, false otherwise.
---<br>NOTE: This function is available only in unsafe mode.
doesAppExist = function(titleid) return false end, 
---Retrieve params used at app boot.
--- Usage example:
---```
---args = System.getBootParams()
---```
---@return string result The params passed to the app when it got launched.
getBootParams = function() return "" end, 
---Load and start an user plugin.
--- Usage example:
---```
---plug_id = System.loadUserPlugin("ux0:data/plugin.suprx")
---```
---@param path string The path to the plugin to load.
---@return integer result An identifier to the loaded module.
---<br>NOTE: This function is available only in unsafe mode.
loadUserPlugin = function(path) return 0 end, 
---Load and start a kernel plugin.
--- Usage example:
---```
---plug_id = System.loadKernelPlugin("ux0:data/plugin.skprx")
---```
---@param path string The path to the plugin to load.
---@return integer result An identifier to the loaded module.
---<br>NOTE: This function is available only in unsafe mode.
loadKernelPlugin = function(path) return 0 end, 
---Stop and unload an user plugin.
--- Usage example:
---```
---System.unloadUserPlugin(plug_id)
---```
---@param plug_id integer The module identifier for the plugin to unload.
---<br>NOTE: This function is available only in unsafe mode.
unloadUserPlugin = function(plug_id) return 0 end, 
---Unmount a virtual mountpoint.
--- Usage example:
---```
---System.unmountMountpoint("app0:")
---```
---@param mnt string The mountpoint to unmount.
---<br>NOTE: This function is available only in unsafe mode.
unmountMountpoint = function(mnt) return 0 end, 
}
---Module that handles SQLite databases management.
Database = {
---Open/Create an SQLite database.
--- Usage example:
---```
---db = Database.open("ur0:shell/db/app.db")
---```
---@param filename string Filename of the database to open.
---@return integer result A valid database handle.
---<br>NOTE: If the database doesn't exist, it's created using this function.
open = function(filename) return 0 end, 
---Close an opened database
--- Usage example:
---```
---Database.close(db)
---```
---@param db integer A valid database handle.
close = function(db) return 0 end, 
---Execute a query.
--- Usage example:
---```
---results = Database.execQuery(db, "SELECT columnName FROM tableName")
---Graphics.debugPrint(0, 0, results[1].columnName, Color.new(255, 255, 255))
---```
---@param db integer A valid database handle.
---@param query string An SQL query to execute.
---@return table result A table with the results of the executed query.
execQuery = function(db, query) return {} end, 
}
---ShutterId: Shutter sound IDs for Sound.playShutter.<br>
---Image capture shutter sound
---@type integer
IMAGE_CAPTURE = 0
---ShutterId: Shutter sound IDs for Sound.playShutter.<br>
---Video record start shutter sound
---@type integer
VIDEO_CAPTURE_START = 0
---ShutterId: Shutter sound IDs for Sound.playShutter.<br>
---Video record end shutter sound
---@type integer
VIDEO_CAPTURE_END = 0
---
Sound = {
---Initialize audio subsystem.
--- Usage example:
---```
---Sound.init()
---```
init = function() return 0 end, 
---Terminate audio subsystem.
--- Usage example:
---```
---Sound.term()
---```
term = function() return 0 end, 
---Open an audio file.
--- Usage example:
---```
---snd = Sound.open("ux0:/data/audio.opus")
---```
---@param filename string Name of the file to open
---@return integer result A valid sound ID.
---<br>NOTE: Supported audio formats: .wav, .aif, .aiff, .opus, .ogg, .mid, .midi, .mp3.
---<br>NOTE: This function can be used to reproduce audio track from a .pshv video file too.
open = function(filename) return 0 end, 
---Play a sound.
--- Usage example:
---```
---Sound.play(snd, NO_LOOP)
---```
---@param music integer A valid sound ID.
---@param loop boolean If true, playback will loop <b>(optional)</b>.
play = function(music, loop) return 0 end, 
---Pause a sound.
--- Usage example:
---```
---Sound.pause(snd)
---```
---@param music integer A valid sound ID.
pause = function(music) return 0 end, 
---Resume a sound.
--- Usage example:
---```
---Sound.resume(snd)
---```
---@param music integer A valid sound ID.
resume = function(music) return 0 end, 
---Close an opened sound.
--- Usage example:
---```
---Sound.close(snd)
---```
---@param music integer A valid sound ID.
close = function(music) return 0 end, 
---Check if a given sound is in playing state.
--- Usage example:
---```
---if Sound.isPlaying(snd) then
---Sound.pause(snd)
---end
---```
---@param music integer A valid sound ID.
---@return boolean result true if playing, false otherwise.
isPlaying = function(music) return false end, 
---Set internal volume for a given sound.
--- Usage example:
---```
---Sound.setVolume(snd, 100)
---```
---@param music integer A valid sound ID.
---@param volume integer Volume value to set.
---<br>NOTE: <b>volume</b> must be in a range of 0 and 32767.
setVolume = function(music, volume) return 0 end, 
---Get internal volume for a given sound.
--- Usage example:
---```
---vol = Sound.getVolume(snd)
---```
---@param music integer A valid sound ID.
---@return integer result Volume value of the given sound.
getVolume = function(music) return 0 end, 
---Get song title of a given sound.
--- Usage example:
---```
---title = Sound.getTitle(snd)
---```
---@param music integer A valid sound ID.
---@return string result Song title of the given sound.
---<br>NOTE: This function works only with .ogg, .mp3, .opus and .wav audio files.
getTitle = function(music) return "" end, 
---Get song author of a given sound.
--- Usage example:
---```
---author = Sound.getAuthor(snd)
---```
---@param music integer A valid sound ID.
---@return string result Song author of the given sound.
---<br>NOTE: This function works only with .ogg, .mp3, .opus and .wav audio files.
getAuthor = function(music) return "" end, 
---Play a shutter sound.
--- Usage example:
---```
---Sound.playShutter(IMAGE_CAPTURE)
---```
---@param id integer A valid shutter sound ID.
playShutter = function(id) return 0 end, 
}
---Module that handles microphone.
Mic = {
---Start a microphone recording phase.
--- Usage example:
---```
---Mic.start(5, 32000)
---```
---@param time integer The time to record in seconds.
---@param samplerate integer The samplerate of the output in Hz.
---<br>NOTE: <b>samplerate</b> must be a multiple of 16000.
start = function(time, samplerate) return 0 end, 
---Stop microphone recording and save result.
--- Usage example:
---```
---Mic.stop("ux0:/data/record.wav")
---```
---@param filename string The filename of the resulting WAV file.
---<br>NOTE: The resulting file will always be a mono WAV file.
stop = function(filename) return 0 end, 
---Pause microphone recording.
--- Usage example:
---```
---Mic.pause()
---```
pause = function() return 0 end, 
---Resume microphone recording.
--- Usage example:
---```
---Mic.resume()
---```
resume = function() return 0 end, 
---Check if the microphone is recording.
--- Usage example:
---```
---if Mic.isRecording() then
---Mic.pause()
---end
---```
---@return boolean result true if recording, false otherwise.
isRecording = function() return false end, 
}
---ImageFilter: Image filters to use with `Graphics.setImageFilters`.<br>
---Point filter
---@type integer
FILTER_POINT = 0
---ImageFilter: Image filters to use with `Graphics.setImageFilters`.<br>
---Linear filter
---@type integer
FILTER_LINEAR = 0
---
Graphics = {
---Initialize drawing phase.
--- Usage example:
---```
---Graphics.initBlend()
---```
initBlend = function() return 0 end, 
---Terminate drawing phase.
--- Usage example:
---```
---Graphics.termBlend()
---```
termBlend = function() return 0 end, 
---Print a text on screen using system font.
--- Usage example:
---```
---Graphics.debugPrint(10, 10, "Hello World", Color.new(255, 255, 255))
---```
---@param x integer X coordinate of the text position in pixels.
---@param y integer Y coordinate of the text position in pixels.
---@param text string Text to print.
---@param color integer A valid color (See `Color`).
debugPrint = function(x, y, text, color) return 0 end, 
---Draw a pixel.
--- Usage example:
---```
---Graphics.drawPixel(5, 5, Color.new(15, 255, 200))
---```
---@param x integer X coordinate of the pixel position in pixels.
---@param y integer Y coordinate of the pixel position in pixels.
---@param color integer A valid color (See `Color`).
---@param image integer Image to draw on <b>(optional)</b>.
---<br>NOTE: If <b>image</b> is not provided, pixel will be drawn on screen.
drawPixel = function(x, y, color, image) return 0 end, 
---Get a pixel color from a loaded image.
--- Usage example:
---```
---pixel_color = Graphics.getPixel(5, 25, img)
---```
---@param x integer X coordinate of the pixel.
---@param y integer Y coordinate of the pixel.
---@param img integer A valid image ID.
---@return integer result The pixel color value (See `Color`).
getPixel = function(x, y, img) return 0 end, 
---Draw a line.
--- Usage example:
---```
---Graphics.drawLine(10, 25, 100, 250, Color.new(25, 200, 120))
---```
---@param x1 integer Starting X coordinate of the line in pixels.
---@param x2 integer Ending X coordinate of the line in pixels.
---@param y1 integer Starting Y coordinate of the line in pixels.
---@param y2 integer Ending Y coordinate of the line in pixels.
---@param color integer A valid color (See `Color`).
drawLine = function(x1, x2, y1, y2, color) return 0 end, 
---Draw a rectangle.
--- Usage example:
---```
---Graphics.fillRect(10, 25, 100, 250, Color.new(25, 200, 120))
---```
---@param x1 integer Starting X coordinate of the rectangle in pixels.
---@param x2 integer Ending X coordinate of the rectangle in pixels.
---@param y1 integer Starting Y coordinate of the rectangle in pixels.
---@param y2 integer Ending Y coordinate of the rectangle in pixels.
---@param color integer A valid color (See `Color`).
fillRect = function(x1, x2, y1, y2, color) return 0 end, 
---Draw an empty rectangle.
--- Usage example:
---```
---Graphics.fillEmptyRect(10, 25, 100, 250, Color.new(25, 200, 120))
---```
---@param x1 integer Starting X coordinate of the rectangle in pixels.
---@param x2 integer Ending X coordinate of the rectangle in pixels.
---@param y1 integer Starting Y coordinate of the rectangle in pixels.
---@param y2 integer Ending Y coordinate of the rectangle in pixels.
---@param color integer A valid color (See `Color`).
fillEmptyRect = function(x1, x2, y1, y2, color) return 0 end, 
---Draw a circle.
--- Usage example:
---```
---Graphics.fillCircle(10, 25, 1.0, Color.new(25, 200, 120))
---```
---@param x integer X coordinate of the circle in pixels.
---@param y integer Y coordinate of the circle in pixels.
---@param rad integer Radius size of the circle.
---@param color integer A valid color (See `Color`).
fillCircle = function(x, y, rad, color) return 0 end, 
---Create an empty image.
--- Usage example:
---```
---img = Graphics.createImage(Color.new(25, 200, 120))
---```
---@param width integer Image width.
---@param height integer Image height.
---@param color integer A valid color (See `Color`) <b>(optional)</b>.
---@return integer result A valid image ID.
createImage = function(width, height, color) return 0 end, 
---Load a .png/.jpg/.bmp image.
--- Usage example:
---```
---img = Graphics.loadImage("app0:/image.jpg")
---```
---@param filename string Name of the file to open.
---@return integer result A valid image ID.
loadImage = function(filename) return 0 end, 
---Save a loaded image to a .png/.bmp image.
--- Usage example:
---```
---Graphics.saveImage(img, "ux0:/data/image.png", FORMAT_PNG)
---```
---@param img integer A valid image ID.
---@param filename string The filename of the screenshot output.
---@param format integer The format to use for the output file <b>(optional)</b>.
---<br>NOTE: <b>FORMAT_JPG</b> is not supported.
saveImage = function(img, filename, format) return 0 end, 
---Load a .png/.jpg/.bmp image (asynchronous).
--- Usage example:
---```
---Graphics.loadImageAsync("app0:/image.jpg")
---while System.getAsyncState() == 0 do
---end
---img = System.getAsyncResult()
---```
---@param filename string Name of the file to open.
loadImageAsync = function(filename) return 0 end, 
---Load a .gif animated image.
--- Usage example:
---```
---img = Graphics.loadAnimatedImage("app0:/image.gif")
---```
---@param filename string Name of the file to open.
---@return integer result A valid image ID.
loadAnimatedImage = function(filename) return 0 end, 
---Gets the number of frames of a loaded animated image.
--- Usage example:
---```
---img = Graphics.loadAnimatedImage("app0:/image.gif")
---frames = Graphics.getImageFramesNum(img)
---```
---@param img integer A valid image ID.
---@return integer result The number of frames for the given image.
getImageFramesNum = function(img) return 0 end, 
---Set current active frame for a loaded animated image.
--- Usage example:
---```
---img = Graphics.loadAnimatedImage("app0:/image.gif")
---Graphics.setImageFrame(img, 8)
---```
---@param img integer A valid image ID.
---@param frame integer The frame to set as active.
setImageFrame = function(img, frame) return 0 end, 
---Free a loaded image.
--- Usage example:
---```
---Graphics.freeImage(img)
---```
---@param img integer A valid image ID.
freeImage = function(img) return 0 end, 
---Set filters to use for a given image.
--- Usage example:
---```
---Graphics.setImageFilters(img, FILTER_LINEAR, FILTER_LINEAR)
---```
---@param img integer A valid image ID.
---@param min_filter integer Min filter to use.
---@param mag_filter integer Mag filter to use.
setImageFilters = function(img, min_filter, mag_filter) return 0 end, 
---Get an image width.
--- Usage example:
---```
---width = Graphics.getImageWidth(img)
---```
---@param img integer A valid image ID.
---@return integer result The image width in pixels.
getImageWidth = function(img) return 0 end, 
---Get an image height.
--- Usage example:
---```
---height = Graphics.getImageHeight(img)
---```
---@param img integer A valid image ID.
---@return integer result The image height in pixels.
getImageHeight = function(img) return 0 end, 
---Draw an image.
--- Usage example:
---```
---Graphics.drawImage(50, 100, img)
---```
---@param x integer X coordinate of the image in pixels.
---@param y integer Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param color integer Image tint color (See `Color`) <b>(optional)</b>.
drawImage = function(x, y, img, color) return 0 end, 
---Draw a rotated image.
--- Usage example:
---```
---Graphics.drawRotateImage(50, 100, img, 1.0)
---```
---@param x integer X coordinate of the image in pixels.
---@param y integer Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param rad integer Rotation radius.
---@param color integer Image tint color (See `Color`) <b>(optional)</b>.
drawRotateImage = function(x, y, img, rad, color) return 0 end, 
---Draw a scaled image.
--- Usage example:
---```
---Graphics.drawScaleImage(50, 100, img, 0.5, 0.5)
---```
---@param x integer X coordinate of the image in pixels.
---@param y integer Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param x_scale integer Scale value for X parameter.
---@param y_scale integer Scale value for Y parameter.
---@param color integer Image tint color (See `Color`) <b>(optional)</b>.
drawScaleImage = function(x, y, img, x_scale, y_scale, color) return 0 end, 
---Draw a part of an image.
--- Usage example:
---```
---Graphics.drawPartialImage(50, 100, img, 20, 20, 100, 100)
---```
---@param x integer X coordinate of the image in pixels.
---@param y integer Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param x_start integer Image X coordinate for the partial drawing.
---@param y_start integer Image Y coordinate for the partial drawing.
---@param width integer Partial drawing width.
---@param height integer Partial drawing height.
---@param color integer Image tint color (See `Color`) <b>(optional)</b>.
drawPartialImage = function(x, y, img, x_start, y_start, width, height, color) return 0 end, 
---Draw an image with several effects.
--- Usage example:
---```
---Graphics.drawImageExtended(50, 100, img, 20, 20, 100, 100, 1.0, 0.5, 0.5)
---```
---@param x integer X coordinate of the image in pixels.
---@param y integer Y coordinate of the image in pixels.
---@param img integer A valid image ID.
---@param x_start integer Image X coordinate for the partial drawing.
---@param y_start integer Image Y coordinate for the partial drawing.
---@param width integer Partial drawing width.
---@param height integer Partial drawing height.
---@param rad integer Rotation radius.
---@param x_scale integer Scale value for X parameter.
---@param y_scale integer Scale value for Y parameter.
---@param color integer Image tint color (See `Color`) <b>(optional)</b>.
drawImageExtended = function(x, y, img, x_start, y_start, width, height, rad, x_scale, y_scale, color) return 0 end, 
---Initialize a rescaler.
--- Usage example:
---```
---Graphics.initRescaler(0, 0, 2.0, 2.0)
---```
---@param x integer X coordinate of the rescaler output.
---@param y integer Y coordinate of the rescaler output.
---@param x_scale integer Scale value for X parameter.
---@param y_scale integer Scale value for Y parameter.
initRescaler = function(x, y, x_scale, y_scale) return 0 end, 
---Terminate a rescaler.
--- Usage example:
---```
---Graphics.termRescaler()
---```
termRescaler = function() return 0 end, 
}
---Module that handles system timers.
Timer = {
---Create a new system timer.<br>
---@return integer result The new system timer's ID<br>
---<b>NOTE: this timer is in resumed state by default.</b>
new = function() return 0 end,
---Get a system timer time.
--- Usage example:
---```
---time = Timer.getTime(tmr)
---```
---@param timer integer The timer ID to get the time of.
---@return integer result The time of the given timer in milliseconds.
getTime = function(timer) return 0 end, 
---Set a system timer time.
--- Usage example:
---```
---Timer.setTime(tmr, 1000)
---```
---@param timer integer The timer ID to set the time of.
---@param msecs integer The time to set in milliseconds.
setTime = function(timer, msecs) return 0 end, 
---Destroy a system timer.
--- Usage example:
---```
---Timer.destroy(tmr)
---```
---@param timer integer The timer ID to destroy.
destroy = function(timer) return 0 end, 
---Pause a system timer.
--- Usage example:
---```
---Timer.pause(tmr)
---```
---@param timer integer The timer ID to pause.
pause = function(timer) return 0 end, 
---Resume a system timer.
--- Usage example:
---```
---Timer.resume(tmr)
---```
---@param timer integer The timer ID to resume.
resume = function(timer) return 0 end, 
---Reset a system timer time.
--- Usage example:
---```
---Timer.reset(tmr)
---```
---@param timer integer The timer ID to reset.
reset = function(timer) return 0 end, 
---Check if a system timer is in playing state.
--- Usage example:
---```
---if Timer.isPlaying(tmr) then
---Timer.pause(tmr)
---end
---```
---@param timer integer The timer ID to check.
---@return boolean result true if playing, false otherwise.
isPlaying = function(timer) return false end, 
}
---GuiTheme: Themes constants to use with `Gui.setTheme`.<br>
---Dark Theme.
---@type integer
DARK_THEME = 0
---GuiTheme: Themes constants to use with `Gui.setTheme`.<br>
---Light Theme.
---@type integer
LIGHT_THEME = 0
---GuiTheme: Themes constants to use with `Gui.setTheme`.<br>
---Classic Theme
---@type integer
CLASSIC_THEME = 0
---WinFlags: Window flags to use with `Gui.initWindow`.<br>
---No flags.
---@type integer
FLAG_NONE = 0
---WinFlags: Window flags to use with `Gui.initWindow`.<br>
---The window can't be collapsed.
---@type integer
FLAG_NO_COLLAPSE = 0
---WinFlags: Window flags to use with `Gui.initWindow`.<br>
---The window can't be moved.
---@type integer
FLAG_NO_MOVE = 0
---WinFlags: Window flags to use with `Gui.initWindow`.<br>
---The window can't be resized.
---@type integer
FLAG_NO_RESIZE = 0
---WinFlags: Window flags to use with `Gui.initWindow`.<br>
---The window has no vertical scrollbar.
---@type integer
FLAG_NO_SCROLLBAR = 0
---WinFlags: Window flags to use with `Gui.initWindow`.<br>
---The window doesn't show a label.
---@type integer
FLAG_NO_TITLEBAR = 0
---WinFlags: Window flags to use with `Gui.initWindow`.<br>
---The window has an horizontal scrollbar.
---@type integer
FLAG_HORIZONTAL_SCROLLBAR = 0
---ConfigMode: Function mode to alter frequency of execution.<br>
---The function is executed only once.
---@type integer
SET_ONCE = 0
---ConfigMode: Function mode to alter frequency of execution.<br>
---The function is executed at every frame.
---@type integer
SET_ALWAYS = 0
---
Gui = {
---Init Gui sub-system.
--- Usage example:
---```
---Gui.init()
---```
init = function() return 0 end, 
---Terminate Gui sub-system.
--- Usage example:
---```
---Gui.term()
---```
term = function() return 0 end, 
---Init Gui drawing phase.
--- Usage example:
---```
---Gui.initBlend()
---```
initBlend = function() return 0 end, 
---Terminate Gui drawing phase.
--- Usage example:
---```
---Gui.termBlend()
---```
termBlend = function() return 0 end, 
---Change theme for the running Gui.
--- Usage example:
---```
---Gui.setTheme(DARK_THEME)
---```
---@param theme integer The theme to set.
setTheme = function(theme) return 0 end, 
---Change input mode for the running Gui.
--- Usage example:
---```
---Gui.setInputMode(true, false, true, true)
---```
---@param use_touch boolean Enable front touch usage for cursor movement.
---@param use_rear boolean Enable rearpad touch usage for cursor movement.
---@param use_buttons boolean Enable buttons usage for cursor movement.
---@param indirect_touch boolean If enabled, cursor is moved by dragging it. If disabled, cursor jumps to the touched location.
setInputMode = function(use_touch, use_rear, use_buttons, indirect_touch) return 0 end, 
---Init screen menubar.
--- Usage example:
---```
---if Gui.initMainMenubar() then
---Gui.termMainMenubar()
---end
---```
---@return boolean result true if the menubar is opened, false otherwise.
initMainMenubar = function() return false end, 
---Terminate screen menubar.
--- Usage example:
---```
---if Gui.initMainMenubar() then
---Gui.termMainMenubar()
---end
---```
termMainMenubar = function() return 0 end, 
---Init a menu.
--- Usage example:
---```
---if Gui.initMenu("My Menu") then
---Gui.termMenu()
---end
---```
---@param label string The label to show.
---@param enabled boolean The menu status to set <b>(optional)</b>.
---@return boolean result true if the menu is opened, false otherwise.
initMenu = function(label, enabled) return false end, 
---Terminate a menu.
--- Usage example:
---```
---if Gui.initMenu() then
---Gui.termMenu()
---end
---```
termMenu = function() return 0 end, 
---Draw a menu item.
--- Usage example:
---```
---if Gui.drawMenuItem("Feature", is_enabled) then
---is_enabled = true
---end
---```
---@param label string The label to show.
---@param selected boolean The item checked status <b>(optional)</b>.
---@param enabled boolean The item status to set <b>(optional)</b>.
---@return boolean result true if clicked, false otherwise.
drawMenuItem = function(label, selected, enabled) return false end, 
---Draw a text.
--- Usage example:
---```
---Gui.drawText("Hello World", Color.new(255, 255, 0))
---```
---@param label string The label to show.
---@param color integer A valid color (See `Color`) <b>(optional)</b>.
drawText = function(label, color) return 0 end, 
---Draw a greyed out text.
--- Usage example:
---```
---Gui.drawDisabledText("Hello World")
---```
---@param label string The label to show.
drawDisabledText = function(label) return 0 end, 
---Draw a text with automatic newlines to fit the window.
--- Usage example:
---```
---Gui.drawWrappedText("Hello World")
---```
---@param label string The label to show.
drawWrappedText = function(label) return 0 end, 
---Draw a button.
--- Usage example:
---```
---if Gui.drawButton("Exit") then
---System.exit()
---end
---```
---@param label string The label to show.
---@param width integer The width of the button <b>(optional)</b>.
---@param height integer The height of the button <b>(optional)</b>.
---@return boolean result true if the button has been clicked, false otherwise.
drawButton = function(label, width, height) return false end, 
---Draw a small button.
--- Usage example:
---```
---if Gui.drawSmallButton("Exit") then
---System.exit()
---end
---```
---@param label string The label to show.
---@return boolean result true if the button has been clicked, false otherwise.
drawSmallButton = function(label) return false end, 
---Draw a checkbox.
--- Usage example:
---```
---is_checked = Gui.drawCheckbox("Check", is_checked)
---```
---@param label string The label to show.
---@param status boolean The initial checked status of the checkbox.
---@return boolean result true if the checkbox is checked, false otherwise.
drawCheckbox = function(label, status) return false end, 
---Draw a radiobutton.
--- Usage example:
---```
---is_checked = Gui.drawRadiobutton("Check", is_checked)
---```
---@param label string The label to show.
---@param status boolean The initial checked status of the radiobutton.
---@return boolean result true if the radiobutton is checked, false otherwise.
drawRadioButton = function(label, status) return false end, 
---Make next element be drawn on current line.
--- Usage example:
---```
---Gui.resetLine()
---```
resetLine = function() return 0 end, 
---Init a window.
--- Usage example:
---```
---Gui.initWindow("Window", FLAG_NO_MOVE + FLAG_NO_RESIZE + FLAG_NO_TITLEBAR + FLAG_NO_COLLAPSE)
---```
---@param label string The label to show.
---@param flags integer The flags to use with the window.
initWindow = function(label, flags) return 0 end, 
---Terminate a window.
--- Usage example:
---```
---Gui.termWindow()
---```
termWindow = function() return 0 end, 
---Set next window position.
--- Usage example:
---```
---Gui.setWindowPos(100, 100, SET_ALWAYS)
---```
---@param x integer X coordinate of the window position in pixels.
---@param y integer Y coordinate of the window position in pixels.
---@param mode integer A mode to use for the function.
setWindowPos = function(x, y, mode) return 0 end, 
---Set next window size.
--- Usage example:
---```
---Gui.setWindowSize(100, 100, SET_ALWAYS)
---```
---@param w integer Width of the window in pixels.
---@param h integer Height of the window in pixels.
---@param mode integer A mode to use for the function.
setWindowSize = function(w, h, mode) return 0 end, 
---Draw a separator.
--- Usage example:
---```
---Gui.drawSeparator()
---```
drawSeparator = function() return 0 end, 
---Draw a tooltip when cursor hover on the previous item.
--- Usage example:
---```
---Gui.drawText("Text")
---Gui.drawTooltip("This is a textbox")
---```
---@param label string The label to show.
drawTooltip = function(label) return 0 end, 
---Draw a slider with variable amount of integer values.
--- Usage example:
---```
---slider_val = Gui.drawIntSlider("A int slider", 0, 100, slider_val)
---```
---@param label string The label to show.
---@param val_min integer The minimum value settable through the slider.
---@param val_max integer The maximum value settable through the slider.
---@param val1 integer The first value to handle with the slider.
---@param val2 integer The second value to handle with the slider <b>(optional)</b>.
---@param val3 integer The third value to handle with the slider <b>(optional)</b>.
---@param val4 integer The forth value to handle with the slider <b>(optional)</b>.
---@return integer result The updated values after the frame execution.
drawIntSlider = function(label, val_min, val_max, val1, val2, val3, val4) return 0 end, 
---Draw a combobox.
--- Usage example:
---```
---elems = {"Element 1", "Element 2", "Element 3", "Element 4"}
---combo_idx = Gui.drawComboBox("##combo", combo_idx, elems)
---end
---```
---@param label string The label to show.
---@param index integer The currently selected element.
---@param elements table The elements to use for the combobox.
---@return integer result The updated selected element.
drawComboBox = function(label, index, elements) return 0 end, 
---Draw a listbox.
--- Usage example:
---```
---elems = {"Element 1", "Element 2", "Element 3", "Element 4"}
---list_idx = Gui.drawListBox("##list", list_idx, elems)
---end
---```
---@param label string The label to show.
---@param index integer The currently selected element.
---@param elements table The elements to use for the combobox.
---@return integer result The updated selected element.
drawListBox = function(label, index, elements) return 0 end, 
---Draw a color picker.
--- Usage example:
---```
---color = Color.new(255, 127, 65)
---color = Gui.drawColorPicker("##color_picker", color)
---end
---```
---@param label string The label to show.
---@param color integer The currently picked color (See `Color`)
---@param alpha boolean If true, alpha value will be pickable, not otherwise. <b>(optional)</b>.
---@return integer result The updated picked color.
drawColorPicker = function(label, color, alpha) return 0 end, 
---Draw a progressbar.
--- Usage example:
---```
---Gui.drawProgressbar(0.25, 200, 0)
---end
---```
---@param fraction integer Progress value to show in 0.0 - 1.0 range.
---@param w integer Width of the element in pixels <b>(optional)</b>.
---@param h integer Height of the element in pixels <b>(optional)</b>.
drawProgressbar = function(fraction, w, h) return 0 end, 
---Draw an image in the Gui subsystem.
--- Usage example:
---```
---icon = Graphics.loadImage("app0:/icon.png")
---Gui.drawImage(icon, 32, 32, 0, 0, 20, 20)
---```
---@param img integer A valid image ID.
---@param width integer Width in pixels of the widget <b>(optional)</b>.
---@param height integer Height in pixels of the widget <b>(optional)</b>.
---@param img_x integer Source image X coordinate <b>(optional)</b>.
---@param img_y integer Source image Y coordinate <b>(optional)</b>.
---@param img_w integer Source image width <b>(optional)</b>.
---@param img_h integer Source image height <b>(optional)</b>.
---@param color integer Image tint color (See `Color`) <b>(optional)</b>.
drawImage = function(img, width, height, img_x, img_y, img_w, img_h, color) return 0 end, 
---Set next widget position.
--- Usage example:
---```
---Gui.setWidgetPos(300, 200)
---Gui.drawText("Hello World")
---end
---```
---@param x integer X coordinate in pixels.
---@param y integer Y coordinate in pixels.
setWidgetPos = function(x, y) return 0 end, 
---Set next widgets width.
--- Usage example:
---```
---Gui.setWidgetWidth(400)
---color = Color.new(255, 255, 255)
---color = Gui.drawColorPicker("##color_picker", color)
---end
---```
---@param w integer Width of the element in pixels.
setWidgetWidth = function(w) return 0 end, 
---Reset next widgets width to original values.
--- Usage example:
---```
---Gui.resetWidgetWidth()
---color = Color.new(255, 255, 255)
---color = Gui.drawColorPicker("##color_picker", color)
---end
---```
resetWidgetWidth = function() return 0 end, 
}
---Module that handles 3D rendering.
Render = {
---Create a vertex.
--- Usage example:
---```
---v = Render.createVertex(1.0, 1.0, 0.0, 0.0, 0.5, 1.0, 1.0, 1.0)
---```
---@param x integer X coordinate of the vertex.
---@param y integer Y coordinate of the vertex.
---@param z integer Z coordinate of the vertex.
---@param u integer U coordinate for texture mapping.
---@param v integer v coordinate for texture mapping.
---@param n1 integer Normal X coordinate of the vertex.
---@param n2 integer Normal Y coordinate of the vertex.
---@param n3 integer Normal Z coordinate of the vertex.
---@return integer result The created vertex ID.
createVertex = function(x, y, z, u, v, n1, n2, n3) return 0 end, 
---Destroy a vertex.
--- Usage example:
---```
---Render.destroyVertex(v)
---```
---@param v integer Vertex ID created with Render.createVertex to destroy.
destroyVertex = function(v) return 0 end, 
---Load a set of vertices as 3D model.
--- Usage example:
---```
---texture = Graphics.loadImage("app0:/texture.png")
---mdl = Render.loadModel(vertices_table, texture)
---```
---@param v table A table with the model vertices.
---@param texture integer A valid image ID.
---@return integer result A valid model ID.
loadModel = function(v, texture) return 0 end, 
---Load an .obj model.
--- Usage example:
---```
---texture = Graphics.loadImage("app0:/texture.png")
---mdl = Render.loadObject("app0:/model.obj", texture)
---```
---@param filename string Name of the file to load.
---@param texture integer Texture ID to use.
---@return integer result A valid model ID.
loadObject = function(filename, texture) return 0 end, 
---Free a model.
--- Usage example:
---```
---Render.unloadModel(mdl)
---```
---@param model integer A valid model ID.
---<br>NOTE: The texture is not unloaded automatically.
unloadModel = function(model) return 0 end, 
---Print a model on screen.
--- Usage example:
---```
---Render.drawModel(mdl, 1.0, 1.0, -5.0, 1.0, 1.0, 0.0)
---```
---@param model integer A valid model ID.
---@param x integer X coordinate of the model.
---@param y integer Y coordinate of the model.
---@param z integer Z coordinate of the model.
---@param angleX integer X rotation value of the model.
---@param angleY integer Y rotation value of the model.
---@param angleZ integer Z rotation value of the model.
---@param unbind boolean Draw the model unbinded from camera instance <b>(optional)</b>.
---<br>NOTE: If not specified, <b>unbind</b> param will be set as <b>false</b>.
drawModel = function(model, x, y, z, angleX, angleY, angleZ, unbind) return 0 end, 
---Set a given texture for a model.
--- Usage example:
---```
---texture = Graphics.loadImage("app0:/texture.png")
---Render.useTexture(mdl, texture)
---```
---@param model integer A valid model ID.
---@param texture integer Texture ID to use.
---<br>NOTE: The old texture is not unloaded automatically.
useTexture = function(model, texture) return 0 end, 
---Set view camera instance settings.
--- Usage example:
---```
---Render.setCamera(0.0, 1.0, 1.0, 0.0, 0.0, 0.0)
---```
---@param x integer X coordinate of the camera.
---@param y integer Y coordinate of the camera.
---@param z integer Z coordinate of the camera.
---@param rot_x integer X related rotation value of the camera.
---@param rot_y integer Y related rotation value of the camera.
---@param rot_z integer Z related rotation value of the camera.
setCamera = function(x, y, z, rot_x, rot_y, rot_z) return 0 end, 
}
