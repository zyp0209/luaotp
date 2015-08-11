package = "otp"
version = "0.1-1"
description = {
  summary = "A simple implementation of OATH-HOTP and OATH-TOTP.",
  detailed = [[
    This is a simple OATH-HOTP and OATH-TOTP implementation in pure lua
    that makes use of LuaCrypto for its hashing needs. It can be used as
    a generation and verification library and is compatible with the
    RFCs 4226 and 6238. It only supports the SHA-1 hashing algorithm
    (as specified in the RFCs).
  ]],
  homepage = "https://github.com/remjey/luaotp",
  license = "MIT/X11",
}
source = {
  url = "git://github.com/remjey/luaotp",
  tag = "v0.1",
}
dependencies = {
  "lua ~> 5.1",
  "luacrypto ~> 0.3",
  "basexx >= 0.1",
  "randbytes",
}
build = {
  type = "builtin",
  modules = {
    otp = "src/otp.lua",
  },
  copy_directories = { "doc", "test" },
}

