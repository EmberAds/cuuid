require 'mkmf'

dir_config("cuuid_generator")
have_library("uuid") if RUBY_PLATFORM[/linux/i]
create_makefile("cuuid_generator")
