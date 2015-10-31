# Gnuplot script file for plotting data in file "experiment1.dat"

set autoscale
unset log
unset label
set xtic auto
set ytic auto
set title "3 Region Server, different size of operations with different queries"
set xlabel "Number of operations (k)"
set ylabel "Average additional time to maintain views (s)"
set xr [0:12]
set yr [0:320]
set key left top
set terminal png size 800,600 enhanced font "Helvetica,14"
set output 'experiment1.png'
plot "experiment1.dat" using 1:2 title 'Query1' with linespoints, "experiment1.dat" using 1:3 title 'Query2' with linespoints, "experiment1.dat" using 1:4 title 'Query3' with linespoints, "experiment1.dat" using 1:5 title 'Query4' with linespoints
