#reference from :
#	https://embedded2015.hackpad.com/-LMbench-nIQoDm37SiM 
#

#!/bin/sh
run()
{
	qemu-arm -L /usr/local/csl/arm-2010q1/bin/ $*
}

WARMUPS=0
REPETITIONS=1

UC_PATH=bin/uClinux/arm

set -x
run $UC_PATH/lat_syscall -W $WARMUPS -N $REPETITIONS getppid
run $UC_PATH/lat_syscall -W $WARMUPS -N $REPETITIONS gettimeofday
run $UC_PATH/lat_syscall -W $WARMUPS -N $REPETITIONS read
run $UC_PATH/lat_syscall -W $WARMUPS -N $REPETITIONS write
