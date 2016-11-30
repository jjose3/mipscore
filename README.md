# TESTCASE SUBMISSION - JERRIN JOSE, SAURABH VARKHEDE

Testcases added - String Copy, Substring match, Count letter frequency in a string, Mean of an array


Run direcory - ProjPart4EC/mipscore
DUT - ProjPart4EC/mipscore/rtl
Verification env - ProjPart4EC/mipscore/verif
Makefiles - ProjPart4EC/mipscore

###How to run the tests

######TESTCASE - Mean of an array
#This runs the entire flow including generation, compilation and run
make -f Makefile.run moa

#Individual commands
make gen MODULE_NAME=mipsCore
make comp MODULE_NAME=mipsCore
make run_wave MODULE_NAME=mipsCore TESTNAME=MOA


######TESTCASE - Count letter frequency in a string
##This runs the entire flow including generation, compilation and run
make -f Makefile.run lfs

##Individual commands
make gen MODULE_NAME=mipsCore
make comp MODULE_NAME=mipsCore
make run_wave MODULE_NAME=mipsCore TESTNAME=LFS

######TESTCASE - Substring match
##This runs the entire flow including generation, compilation and run
make -f Makefile.run ssm

##Individual commands
make gen MODULE_NAME=mipsCore
make comp MODULE_NAME=mipsCore
make run_wave MODULE_NAME=mipsCore TESTNAME=SSM


######TESTCASE - String Copy
##This runs the entire flow including generation, compilation and run
make -f Makefile.run scp

##Individual commands
make gen MODULE_NAME=mipsCore
make comp MODULE_NAME=mipsCore
make run_wave MODULE_NAME=mipsCore TESTNAME=SCP
