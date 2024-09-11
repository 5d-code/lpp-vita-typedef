# Autocomplete for Lua Player Plus Vita

![lua player plus logo](https://raw.githubusercontent.com/gnmmarechal/lpp-vita/master/banner.png)

[Lua Player Plus](https://github.com/Rinnegatamante/lpp-vita)

---

Lua Player Plus Vita is a framework for developing homebrew applications on the PS Vita using Lua, BUT for some reason, it lacks built-in support for autocomplete or IntelliSense. To address this, I made a Lua file (`lppvtyped.lua`) that defines **autocompletions**, **documentation**, and **type definitions**. This file is designed for development environments and *should not* be uploaded to the PS Vita, as it contains placeholder variables and functions that would overwrite the actual implementations on the device.

---

This file was made by a Python script that translates the C++ documented
code to Lua file with **placeholder** functions/variables. Im not going
to release it because its really badly written.

Please issue an issue (??) if you find inconsistencies or fixed it yourself and submit a pull request
