require 'mkmf'

dir_config("cuuid")
have_library("uuid") if RUBY_PLATFORM[/linux/i]
create_makefile("cuuid")
