make primers.0

gnutime primers.0 > output.txt

make primers.pg

gprof -b primers.pg
gprof -b -l primers.pg