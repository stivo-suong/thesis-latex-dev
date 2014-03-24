SYSNAME = $(shell uname -s)
ifeq ($(SYSNAME),Linux)
	EXE_NAME = './build.sh'
else
	EXE_NAME = './cygwin_setup.sh'
endif
default:
	eval $(EXE_NAME)
	#./build.sh
	#./cygwin_setup.sh
clean:
	./clean.sh
