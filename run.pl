use strict;
use warnings;
 
my $testname = $ARGV[0];
 
if (not defined $testname) {
  die "Need testname\n";
}
print "Running '$testname'\n";
system("source setup-eecad.cshrc");
system("make clean");
system("make gen MODULE_NAME=mipsCore");
system("make comp MODULE_NAME=mipsCore");
system("make run_wave MODULE_NAME=mipsCore TESTNAME=$testname");
