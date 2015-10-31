# Gnuplot script file for plotting data in file "experiment2.dat"

set autoscale
unset log
unset label
set xtic auto
set ytic auto
set title "50k opertations, different number of Region Server/View Manager"
set xlabel "Number of Region Server/View Manager"
set ylabel "Average totol time to maintain views (s)"
set xr [2:12]
set yr [100:250]
set terminal png size 800,600 enhanced font "Helvetica,14"
set output 'experiment2.png'
plot "experiment2.dat" using 1:2 title 'TotalTime' with linespoints
