FILENAME="dummy.txt"

alias gnutime="/usr/bin/time"
PATH=$PATH:.

echo "##########"
echo "ACCOUNTING"
echo "##########"

echo ""

echo "Ejercicio 1"
echo "-----------"
echo ""

gcc popul.c -O3 -o popul.O3

run_popul_on() {
	echo ""
	echo "Redirecting to $1:"
	echo ""

	gnutime popul.O3 > $1
}

echo "a)"

run_popul_on "$HOME/$FILENAME"

run_popul_on "$HOME/dades/$FILENAME"

run_popul_on "/tmp/$FILENAME"

run_popul_on "/dev/null"

BYTES_POPUL=$(stat --printf="%s" $HOME/$FILENAME)

d="
d)

Because of the different mounting systems,
which lead to different I/O operation costs.
Those differences in the I/O cost cause
variations in the system and total elapsed times.

The user time doesn't vary because it does not
include I/O operations.
"


echo "$d"

e="
e)

I can say that redirecting output to files on paths
mounted by NFS and CIFS is not a good option when
measuring an application time, because it affects
execution time in a way we generally do not desire
for our measures, causing a %CPU not close to 100%.

The best setup is to use /dev/null if our intention
is to measure just computation time
(without I/O time), and /tmp if we also want to
measure the I/O time that we would see in a
local disk file system (not NFS nor CIFS) or if
we want to see the output of the program. 

We should also be aware that files saved in the /tmp
path need to be later copied to another path if we're
willing to keep them because they're deleted on 
computer shutdown.
"

echo "$e"

echo "Ejercicio 2"
echo "-----------"
echo ""

gcc pi.c -O0 -o pi.O0

run_pi_on() {
	echo "Redirecting to $1:"
	echo ""
	
	for run in {1..3}
	do
		gnutime pi.O0 > $1
		echo ""
	done
}

run_pi_on "$HOME/$FILENAME"

run_pi_on "$HOME/dades/$FILENAME"

run_pi_on "/tmp/$FILENAME"

run_pi_on "/dev/null"

BYTES_PI=$(stat --printf="%s" $HOME/$FILENAME)

ans="
The results are very similar because the pi
program does very little I/O compared to
the computation it does. This causes the CPU
execution time percentage to always be very high
independently of the output mounting system. 

This is because, added to the fact that it is
compiled with no optimization (O0), which increases
computation time, pi program does only write 
approximately $BYTES_PI bytes of data, whereas 
popul program writes about $BYTES_POPUL bytes of data.
"

echo "$ans"

echo "Ejercicio 3"
echo "-----------"
echo ""

gcc pi.c -O0 -o pi.O0
gcc pi.c -O3 -o pi.O3

echo "a)"
echo ""

pi.O0 > "outO0"
pi.O3 > "outO3"

if diff "outO0" "outO3" > /dev/null
then
	echo "O0 and O3 outputs of pi are equal"
else
	echo "O0 and O3 outputs of pi are different"
fi

rm -f "outO0" "outO3"

TIMEO0=$( { gnutime --format="%U;%S;%e" pi.O0 > /dev/null; } 2>&1 )
TIMEO3=$( { gnutime --format="%U;%S;%e" pi.O3 > /dev/null; } 2>&1 )

arrO0=(${TIMEO0//;/ })
arrO3=(${TIMEO3//;/ })

TIMEO0=$(python -c "print ${arrO0[0]} + ${arrO0[1]}")
TIMEO3=$(python -c "print ${arrO3[0]} + ${arrO3[1]}")

SPEEDUPUS=$(python -c "print $TIMEO0/$TIMEO3")

echo ""
echo "b)"
echo ""
echo "Speedup user+system: $SPEEDUPUS"

SPEEDUPE=$(python -c "print ${arrO0[2]}/${arrO3[2]}")

echo ""
echo "c)"
echo ""
echo "Speedup elapsed: $SPEEDUPE"

echo ""
echo "#########"
echo "PROFILING"
echo "#########"

echo ""
echo "Ejercicio 4"

gcc pi.c -O0 -pg -g -o pi.pg.g.O0

pi.pg.g.O0 > /dev/null

echo ""
echo "Output of gprof:"
echo ""

gprof -b -p pi.pg.g.O0

echo ""
echo "a) Which is the most invoked routine?"

ans="
Looking at the 'calls' column  in the output above, 
the most invoked routine is DIVIDE, with 30014 calls.
"
echo "$ans"

echo "b) Which is the most CPU time consuming routine?"


ans="
Again, looking at the first (time) column, the most CPU time 
consuming routine is DIVIDE, with a 53.34% of time over total 
time.
"

echo "$ans"

echo "c) Which is the most CPU time consuming source code line?"
echo ""

echo ""
echo "Output of gprof with line level profiling:"

gprof -b -p -l pi.pg.g.O0

ans="
Looking at the output of gprof with line level profiling,
the most CPU time consuming source code line is 19.
"

echo "$ans"

echo "d) Does the system mode execution time appear in the gprof output?"

echo "No it doesn't, the time shown is only User CPU time, the System CPU time is not included."

echo ""
echo "Ejercicio 5"
echo "-----------"

gcc pi.c -O3 -pg -g -o pi.pg.g.O3
pi.pg.g.O3 > /dev/null


echo ""
echo "Output with gprof:"
echo ""

gprof -b -p pi.pg.g.O3

echo ""
echo "a)"
echo ""

ans="
Now only the calculate function does appear in the gprof
output, and it has a 99.44% User CPU execution time. Before
it had 0.0% execution time, because most of the time
spent in it was due to calls to other functions which
no do not appear. Also, its cumulative time has gone down
from 7.3 seconds to 2.86 seconds.
"

echo "$ans"

echo ""
echo "b)"

echo ""
echo "Function calls on O3 assembler:"
echo ""

gcc -O3 -S pi.c
cat pi.s | grep call



echo ""
echo "Function calls on O0 assembler:"
echo ""

gcc -O0 -S pi.c
cat pi.s | grep call

ans="
The differences are due to the inlining that the compiler
has performed on some of the functions of the pi program,
which are the ones that do not appear: DIVIDE,
LONGDIV, SET, SUBSTRACT, MULTIPLY and progress.

Also, the time reduction can be explained by the
optimizations that the O3 flag performs over the O0
flag, which doesn't perform any optimization.
"

echo "$ans"


echo "Ejercicio 6"
echo "-----------"

gcc pi.c -O0 -g -o pi.g.O0

echo ""
echo "opreport output for 750000:"
echo ""

operf --event=CPU_CLK_UNHALTED:750000 ./pi.g.O0 > /dev/null
opreport -l

echo ""
echo "opreport output for 7500:"
echo ""

operf --event=CPU_CLK_UNHALTED:7500 ./pi.g.O0 > /dev/null
opreport -l

echo ""

ans = "
There is an increment in the samples column value
for the 7500 counter value with respect to the 750000
counter value.

This is because oprofile takes a sample on every 'counter'
increments so with a lower value the frequency of the sampling
will be higher and oprofile will take more samples in
the same time.
"

echo "$ans"

echo "Ejercicio 7"
echo "-----------"

gcc pi.c -O3 -g -o pi.g.O3

operf --event=CPU_CLK_UNHALTED:7500 ./pi.g.O3 > /dev/null

ans="
We can clearly see that oprofile has taken much less
samples on the optimized (O3) execution, and that's because
its execution time is much smaller.

Also, when using opannotate, we can see that the sample
percentages have changed a little bit, making the division
operations much less expensive as compared to branching
operations. This is because the are parts of the code
which the compiler can optimize much more than others.

Also, the number of lines of code that opannotate has been
able to sample individually is much smaller with the execution
of the optimized executable, and that's because it's harder
to map lines of code to instructions due to the compiler
optimizations.

Lastly, using ocount we can see that the number of cycles
has been more than halved in the O3 execution, again due
to the optimizations which reduce instructions, increase
throughput and decrease overall cycles. 
"

echo "$ans"

echo "Ejercicio 8"
echo "-----------"

echo ""
echo "a)"

ans="
The time shown is CPU time, cause it is based on the
tms_utime and tms_stime attributes of the struct,
and not on the return value of times.

The times() call can also provide real elapsed time, and
we can access it with the return value of the call.
"

echo "$ans"

echo "b)"

ans="
getrusage() can only provide CPU time, cause it always
returns 0 upon success, and the struct which gets assigned
has no attribute with the elapsed time, only user and system
cpu time.

As I can see from the results I've obtained in my machine,
the precision is slightly higher with getrusage(), but
as the documentation states, times() accuracy is left
unspecified, whereas getrusage() accuracy is microseconds.
"

echo "$ans"