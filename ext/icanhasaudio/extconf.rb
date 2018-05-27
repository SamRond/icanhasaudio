ENV["ARCHFLAGS"] = "-arch #{`uname -p` =~ /powerpc/ ? 'ppc' : 'i386'}"

require 'mkmf'

find_header 'lame/lame.h'
find_library 'mp3lame', 'lame_init'

create_makefile('icanhasaudio')
