package = "busted-codewars"
version = "dev-1"
source = {
   url = "git://github.com/codewars/busted-codewars"
}
description = {
   summary = "Codewars output handler for Busted",
   detailed = [[
      Codewars output handler for Busted, a unit testing framework for Lua.
   ]],
   homepage = "https://github.com/codewars/busted-codewars",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {}
}
