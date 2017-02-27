CCMODE	=32
CCMODE	=64
CC	=gcc -m${CCMODE}
CFLAGS	=-O0 -g
LDFLAGS	=-g
LDLIBS	=

all::	sigsegv-maker

check::	sigsegv-maker
	${PREARGS} ./sigsegv-maker ${ARGS}

check-fancy:: sigsegv-maker
	ulimit -c unlimited; ${MAKE} PREARGS='LD_PRELOAD=libSegFault.so' check

clean::
	${RM} *.o core.* lint tags

distclean clobber:: clean
	${RM} sigsegv-maker
