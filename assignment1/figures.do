clear
use merged.dta

gen label="S" if solymp_bh==1
replace label="W" if wolymp_bh==1
replace label="C" if mcup_bh==1

*sort country year

*graphs for thesis figures
/*The following 25 commands consecutively generate
Figures 1-25 of the thesis.*/

scatter arrivals year if isocode=="JPN" & year>=1995, c(l) mlabel(label)
scatter arrivals year if isocode=="SWE" & year>=1995, c(l) mlabel(label)
scatter arrivals year if isocode=="MEX" & year>=1995, c(l) mlabel(label)
scatter arrivals year if isocode=="USA" & year>=1995, c(l) mlabel(label)
scatter arrivals year if isocode=="GBR" & year>=1995, c(l) mlabel(label)
scatter arrivals year if isocode=="CHE" & year>=1995, c(l) mlabel(label)
scatter arrivals year if isocode=="CHN" & year>=1995, c(l) mlabel(label)
scatter arrivals year if isocode=="ZAF" & year>=1995, c(l) mlabel(label)
scatter arrivals year if isocode=="FRA" & year>=1995, c(l) mlabel(label)

scatter real_travel_mil year if isocode=="AUS" & year>=1975, c(l) mlabel(label)
scatter real_travel_mil year if isocode=="CAN" & year>=1975, c(l) mlabel(label)
scatter real_travel_mil year if isocode=="MEX" & year>=1975, c(l) mlabel(label)
scatter real_travel_mil year if isocode=="RUS" & year>=1975, c(l) mlabel(label)
scatter real_travel_mil year if isocode=="USA" & year>=1975, c(l) mlabel(label)
scatter real_travel_mil year if isocode=="KOR" & year>=1975, c(l) mlabel(label)

graph bar arrivals, over(year) 
graph bar real_travel_mil, over(year) 

graph bar arrivals, over(olymph)
graph bar arrivals, over(olymph_past)
graph bar real_travel_mil, over(olymph)
graph bar real_travel_mil, over(olymph_past)

graph bar arrivals, over(mcuph)
graph bar arrivals, over(mcuph_past)
graph bar real_travel_mil, over(mcuph)
graph bar real_travel_mil, over(mcuph_past)









