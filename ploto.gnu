reset
set key outside
set grid
set xrange [-40:40]
#set yrange [10: 100000]
set title "Secondaries at ground level from \nhighest shower posible"
set xlabel " X (m)"
set ylabel " par/m^2 "
#set log y 
#set ytics 1, 10, 100000

plot 'Saltaquepao.dat' u ($1-1599.5):2 w l ls 1 lc rgb "blue" lw 3 t "29 deg south 5230 msnm",\
     'Chacaquepao.dat' u ($1-1599.5):2 w l ls 2 lc rgb "red" lw 3 t "Chacaltaya 5230 msnm",\
     'Huanca1quepao.dat' u ($1-1599.5):2 w l ls 3  lc rgb "cyan" lw 3 t "Huancayo 5230 msnm",\
     'Huanca2quepao.dat' u ($1-1599.5):2 w l ls 4 lc rgb "orange" lw 3 t "Huancayo 3313 msnm"

call '/Users/wembo/Documents/tesis/gnuploses/ps.gpi' 'lluviasSitios'
