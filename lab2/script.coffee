#!/usr/local/bin/coffee

child = require 'child_process'
e = child.execSync

usage = ->
    console.error(
        """
            Usage: script prog_orig prog_opt nmin nmax nstep nexec

            prog_orig  - Executable of the original program
            prog_opt   - Executable of the optimized program
            nmin, nmax - Minimum and maximum number of decimals
            nstep      - Step for the nmin to nmax decimal loop
            nexec      - Number of executions to do average of execution time
        """
    )

args = process.argv[2..]

usage() if args.length isnt 6

[prog_orig, prog_opt, nmin, nmax, nstep, nexec] = args

[nmin, nmax, nstep, nexec] = [nmin, nmax, nstep, nexec].map(Number)

# Check correctness
for N in [nmin..nmax] by nstep
    output_orig = e "#{prog_orig} #{N}"
    output_opt  = e "#{prog_opt} #{N}"

    if output_opt.toString() isnt output_orig.toString()
        console.error "No correct results for N=#{N}"
        process.exit 1


# Execute
for N in [nmin..nmax] by nstep
    time_output = e "/usr/bin/time -f \"%e\" #{prog_opt} #{N} > /dev/null"
    time = time_output
    console.log time
    process.exit 0
