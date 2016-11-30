#!/bin/bash

source setup-eecad.cshrc
make clean
make gen MODULE_NAME=mipsCore
make comp MODULE_NAME=mipsCore
make run_wave MODULE_NAME=mipsCore TESTNAME=SCP
