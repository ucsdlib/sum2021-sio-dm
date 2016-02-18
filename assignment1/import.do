clear 
set more off
set mem 300000

insheet using wdi_download.txt

replace code="GER" if code=="DEU"

*delete non-countries

drop if code=="EAP"
drop if code=="ECA"
drop if code=="PYF"
drop if code=="HPC"
drop if code=="HIC"
drop if code=="NOC"
drop if code=="OEC"
drop if code=="LAC"
drop if code=="LDC"
drop if code=="LMY"
drop if code=="LIC"
drop if code=="LMC"
drop if code=="MNA"
drop if code=="MIC"
drop if code=="SAS"
drop if code=="SSA"
drop if code=="UMC"
drop if code=="WBG"
drop if code=="WLD"
drop if code=="EMU"

*delete unused variables

drop transport
drop rec_ptransi
drop rec_traveli
drop rec_exports
drop rec_cusd
drop inflation

*generate host & bids

gen olymph=0
gen olymp23h=0
gen solymph=0
gen solymp23h=0
gen wolymph=0
gen wolymp23h=0
gen mcuph=0
gen mcup23h=0

*replace with hosts and bids

replace olymph=1 if year=="YR1976" & code=="CAN"
replace olymph=1 if year=="YR1976" & code=="AUT"
replace olymph=1 if year=="YR1980" & code=="RUS"
replace olymph=1 if year=="YR1980" & code=="USA"
replace olymph=1 if year=="YR1984" & code=="USA"
replace olymph=1 if year=="YR1984" & code=="BIH"
replace olymph=1 if year=="YR1988" & code=="KOR"
replace olymph=1 if year=="YR1988" & code=="CAN"
replace olymph=1 if year=="YR1992" & code=="ESP"
replace olymph=1 if year=="YR1992" & code=="FRA"
replace olymph=1 if year=="YR1994" & code=="NOR"
replace olymph=1 if year=="YR1996" & code=="USA"
replace olymph=1 if year=="YR1998" & code=="JPN"
replace olymph=1 if year=="YR2000" & code=="AUS"
replace olymph=1 if year=="YR2002" & code=="USA"
replace olymph=1 if year=="YR2004" & code=="GRC"
replace olymph=1 if year=="YR2006" & code=="ITA"
replace olymp23h=1 if year=="YR1976" & code=="RUS"
replace olymp23h=1 if year=="YR1976" & code=="USA"
replace olymp23h=1 if year=="YR1976" & code=="CHE"
replace olymp23h=1 if year=="YR1980" & code=="USA"
replace olymp23h=1 if year=="YR1984" & code=="JPN"
replace olymp23h=1 if year=="YR1984" & code=="SWE"
replace olymp23h=1 if year=="YR1988" & code=="JPN"
replace olymp23h=1 if year=="YR1988" & code=="SWE"
replace olymp23h=1 if year=="YR1988" & code=="ITA"
replace olymp23h=1 if year=="YR1992" & code=="FRA"
replace olymp23h=1 if year=="YR1992" & code=="AUS"
replace olymp23h=1 if year=="YR1992" & code=="BGR"
replace olymp23h=1 if year=="YR1992" & code=="SWE"
replace olymp23h=1 if year=="YR1994" & code=="SWE"
replace olymp23h=1 if year=="YR1994" & code=="USA"
replace olymp23h=1 if year=="YR1996" & code=="GRC"
replace olymp23h=1 if year=="YR1996" & code=="CAN"
replace olymp23h=1 if year=="YR1998" & code=="USA"
replace olymp23h=1 if year=="YR1998" & code=="SWE"
replace olymp23h=1 if year=="YR2000" & code=="CHN"
replace olymp23h=1 if year=="YR2000" & code=="GBR"
replace olymp23h=1 if year=="YR2002" & code=="SWE"
replace olymp23h=1 if year=="YR2002" & code=="CHE"
replace olymp23h=1 if year=="YR2004" & code=="ITA"
replace olymp23h=1 if year=="YR2004" & code=="ZAF"
replace olymp23h=1 if year=="YR2006" & code=="CHE" 
replace solymph=1 if year=="YR1976" & code=="CAN"
replace solymp23h=1 if year=="YR1976" & code=="RUS"
replace solymp23h=1 if year=="YR1976" & code=="USA"
replace solymph=1 if year=="YR1980" & code=="RUS"
replace solymp23h=1 if year=="YR1980" & code=="USA"
replace solymph=1 if year=="YR1984" & code=="USA"
replace solymph=1 if year=="YR1988" & code=="KOR"
replace solymp23h=1 if year=="YR1988" & code=="JPN"
replace solymph=1 if year=="YR1992" & code=="ESP"
replace solymp23h=1 if year=="YR1992" & code=="FRA"
replace solymp23h=1 if year=="YR1992" & code=="AUS"
replace solymph=1 if year=="YR1996" & code=="USA"
replace solymp23h=1 if year=="YR1996" & code=="GRC"
replace solymp23h=1 if year=="YR1996" & code=="CAN"
replace solymph=1 if year=="YR2000" & code=="AUS"
replace solymp23h=1 if year=="YR2000" & code=="CHN"
replace solymp23h=1 if year=="YR2000" & code=="GBR"
replace solymph=1 if year=="YR2004" & code=="GRC"
replace solymp23h=1 if year=="YR2004" & code=="ITA"
replace solymp23h=1 if year=="YR2004" & code=="ZAF"
replace solymph=1 if year=="YR2008" & code=="CHN"
replace solymp23h=1 if year=="YR2008" & code=="CAN"
replace solymp23h=1 if year=="YR2008" & code=="FRA"
replace wolymph=1 if year=="YR1976" & code=="AUT"
replace wolymp23h=1 if year=="YR1976" & code=="CHE"
replace wolymph=1 if year=="YR1980" & code=="USA"
replace wolymph=1 if year=="YR1984" & code=="BIH"
replace wolymp23h=1 if year=="YR1984" & code=="JPN"
replace wolymp23h=1 if year=="YR1984" & code=="SWE"
replace wolymph=1 if year=="YR1988" & code=="CAN"
replace wolymp23h=1 if year=="YR1988" & code=="SWE"
replace wolymp23h=1 if year=="YR1988" & code=="ITA"
replace wolymph=1 if year=="YR1992" & code=="FRA"
replace wolymp23h=1 if year=="YR1992" & code=="BGR"
replace wolymp23h=1 if year=="YR1992" & code=="SWE"
replace wolymph=1 if year=="YR1994" & code=="NOR"
replace wolymp23h=1 if year=="YR1994" & code=="SWE"
replace wolymp23h=1 if year=="YR1994" & code=="USA"
replace wolymph=1 if year=="YR1998" & code=="JPN"
replace wolymp23h=1 if year=="YR1998" & code=="USA"
replace wolymp23h=1 if year=="YR1998" & code=="SWE"
replace wolymph=1 if year=="YR2002" & code=="USA"
replace wolymp23h=1 if year=="YR2002" & code=="SWE"
replace wolymp23h=1 if year=="YR2002" & code=="CHE"
replace wolymph=1 if year=="YR2006" & code=="ITA"
replace wolymp23h=1 if year=="YR2006" & code=="CHE"
replace mcuph=1 if year=="YR1978" & code=="ARG"
replace mcuph=1 if year=="YR1982" & code=="ESP"
replace mcuph=1 if year=="YR1986" & code=="MEX"
replace mcuph=1 if year=="YR1990" & code=="ITA"
replace mcuph=1 if year=="YR1994" & code=="USA"
replace mcup23h=1 if year=="YR1994" & code=="BRA"
replace mcup23h=1 if year=="YR1994" & code=="MAR"
replace mcuph=1 if year=="YR1998" & code=="FRA"
replace mcup23h=1 if year=="YR1998" & code=="MAR"
replace mcup23h=1 if year=="YR1998" & code=="CHE"
replace mcuph=1 if year=="YR2002" & code=="KOR"
replace mcuph=1 if year=="YR2002" & code=="JPN"
replace mcup23h=1 if year=="YR2002" & code=="MEX"
replace mcuph=1 if year=="YR2006" & code=="DEU"
replace mcup23h=1 if year=="YR2006" & code=="ZAF"
replace mcup23h=1 if year=="YR2006" & code=="GBR"

*generate mega variables

gen mega=1 if olymph==1 | mcuph==1
replace mega=0 if olymph!=1 & mcuph!=1

gen megabid=1 if olymp23h==1 | mcup23h==1
replace megabid=0 if olymp23h!=1 & mcup23h!=1

*generate past versions of current dummies

sort country year
by country:gen olymph_cumul=sum(olymph)
gen olymph_past=olymph_cumul
replace olymph_past=1 if olymph_past>0 & olymph_past!=.

sort country year
by country:gen mega_cumul=sum(mega)
gen mega_past=mega_cumul
replace mega_past=1 if mega_past>0 & mega_past!=.

sort country year
by country: gen solymph_cumul=sum(solymph)
gen solymph_past=solymph_cumul
replace solymph_past=1 if solymph_past>0 & solymph_past!=.

sort country year
by country: gen wolymph_cumul=sum(wolymph)
gen wolymph_past=wolymph_cumul
replace wolymph_past=1 if wolymph_past>0 & wolymph_past!=.

sort country year
by country: gen mcuph_cumul=sum(mcuph)
gen mcuph_past=mcuph_cumul
replace mcuph_past=1 if mcuph_past>0 & mcuph_past!=.

sort country year
by country: gen megabid_cumul=sum(megabid)
gen megabid_past=megabid_cumul
replace megabid_past=1 if megabid_past>0 & megabid_past!=.

sort country year
by country: gen olymp23h_cumul=sum(olymp23h)
gen olymp23h_past=olymp23h_cumul
replace olymp23h_past=1 if olymp23h_past>0 & olymp23h_past!=.

sort country year
by country: gen solymp23h_cumul=sum(solymp23h)
gen solymp23h_past=solymp23h_cumul
replace solymp23h_past=1 if solymp23h_past>0 & solymp23h_past!=.

sort country year
by country: gen wolymp23h_cumul=sum(wolymp23h)
gen wolymp23h_past=wolymp23h_cumul
replace wolymp23h_past=1 if wolymp23h_past>0 & wolymp23h_past!=.

sort country year
by country: gen mcup23h_cumul=sum(mcup23h)
gen mcup23h_past=mcup23h_cumul
replace mcup23h_past=1 if mcup23h_past>0 & mcup23h_past!=.

*generate joint host/unsuccessful bid host dummies

gen mega_bh=1 if mega==1 | megabid==1
replace mega_bh=0 if mega!=1 & megabid!=1

gen olymp_bh=1 if olymph==1 | olymp23h==1
replace olymp_bh=0 if olymph!=1 & olymp23h!=1

gen solymp_bh=1 if solymph==1 | solymp23h==1
replace solymp_bh=0 if solymph!=1 & solymp23h!=1

gen wolymp_bh=1 if wolymph==1 | wolymp23h==1
replace wolymp_bh=0 if wolymph!=1 & wolymp23h!=1

gen mcup_bh=1 if mcuph==1 | mcup23h==1
replace mcup_bh=0 if mcuph!=1 & mcup23h!=1

*generate past versions of joint host/unsuccessful bid host dummies

gen mega_bhpast=1 if mega_past==1 | megabid_past==1
replace mega_bhpast=0 if mega_past!=1 & megabid_past!=1

gen olymp_bhpast=1 if olymph_past==1 | olymp23h_past==1
replace olymp_bhpast=0 if olymph_past!=1 & olymp23h_past!=1

gen solymp_bhpast=1 if solymph_past==1 | solymp23h_past==1
replace solymp_bhpast=0 if solymph_past!=1 & solymp23h_past!=1

gen wolymp_bhpast=1 if wolymph_past==1 | wolymp23h_past==1
replace wolymp_bhpast=0 if wolymph_past!=1 & wolymp23h_past!=1

gen mcup_bhpast=1 if mcuph_past==1 | mcup23h_past==1
replace mcup_bhpast=0 if mcuph_past!=1 & mcup23h_past!=1

*convert year variable to numeric format

egen xxx=ends(year), punct(R) tail

destring xxx, gen(yyy)

drop xxx
drop year
rename yyy year
rename code isocode

sort isocode year


save wdi_import.dta, replace

clear

set mem 300000

use pop year isocode using dataagg2.dta



note pop: The Rose/Speigel population variable (pop) is measured in thousands.

sort isocode year

save rose_import.dta, replace

clear

use wdi_import.dta

merge isocode year using rose_import.dta

*omit all observations for countries with 2006 population less than 3 million

gen dropme=1 if year==2006 & pop<3000

sort country dropme

by country: gen marker=sum(dropme)

drop if marker==1

*Montenegro has 2006 population less than 3 million, so it should be dropped
*but it wasn't dropped by the previous commands because all values of pop were missing

drop if isocode=="MNE"

*Since the WDI has no data for Taiwan, we must drop all observations from Taiwan

drop if isocode=="TWN"


*labels

label variable mega megahost
label variable olymph olympichost
label variable solymph summerhost
label variable wolymph winterhost
label variable mcuph worldcuphost
label variable olymp23h olympicbid
label variable solymp23h summerbid
label variable wolymp23h winterbid
label variable mcup23h worldcupbid
label variable mega_past megahostpast
label variable olymph_past olympichostpast
label variable solymph_past summerhostpast
label variable wolymph_past winterhostpast
label variable mcuph_past worldcuphostpast
label variable megabid_past megabidpast
label variable olymp23h_past olympicbidpast
label variable solymp23h_past summerbidpast
label variable wolymp23h_past winterbidpast
label variable mcup23h_past worldcupbidpast
label variable mega_bh megahostbid
label variable olymp_bh olympichostbid
label variable solymp_bh summerhostbid
label variable wolymp_bh winterhostbid
label variable mcup_bh worldcuphostbid
label variable mega_bhpast megahostbidpast
label variable olymp_bhpast olympichostbidpast
label variable solymp_bhpast summerhostbidpast
label variable wolymp_bhpast winterhostbidpast
label variable mcup_bhpast worldcuphostbidpast



*drop all observations for years before 1975

drop if year<1975

*tab _merge

drop _merge

drop dropme

drop marker

*generate travel in dollars

gen travel_mil_usd_current=((travel*comserexp)/100)/1000000

*deflate new travel variable to 2007 constant USD

sort country year
by country: gen def2007=gdp_deflator[_N-1]

capture program drop deflate
program define deflate
	gen real_`1'=(`1'/gdp_deflator)*def2007
end

deflate gni_pc
deflate travel_mil_usd_current

rename real_travel_mil_usd_current real_travel_mil

capture drop rtravel_obs
capture drop rtravel_counter
capture drop rtemp
capture drop rtemp2
sort country
gen rtravel_counter=1 if real_travel_mil!=.
by country: gen rtemp=sum(rtravel_counter) 
by country: egen rtemp2=max(rtemp) 
by country: egen rtravel_obs=max(rtemp) 

*delete travel variables with 10 or less observations

drop if rtravel_obs<=10 | rtravel_obs==.


replace real_travel_mil=. if country=="Argentina" & year<1990
replace real_travel_mil=. if country=="Belarus" & year<1995
replace real_travel_mil=. if country=="Bolivia" & year<1985
replace real_travel_mil=. if country=="Brazil" & year<1994
replace real_travel_mil=. if country=="Bulgaria" & year<1997
replace real_travel_mil=. if country=="Columbia" & year<1983
replace real_travel_mil=. if country=="Iran, Islamic Rep." & year<1979
replace real_travel_mil=. if country=="Israel" & year<1985
replace real_travel_mil=. if country=="Mexico" & year<1995
replace real_travel_mil=. if country=="Nicaragua" & year<1991
replace real_travel_mil=. if country=="Peru" & year<1991
replace real_travel_mil=. if country=="Romania" & year<1998
replace real_travel_mil=. if country=="Spain" & year<1992
replace real_travel_mil=. if country=="Turkey" & year<1999
replace real_travel_mil=. if country=="Uruguay" & year<1991
replace real_travel_mil=. if country=="Venezuela, RB" & year<2000
replace real_travel_mil=. if country=="Zambia" & year<1997



sort country
egen numcode=group(country)

*generate travel variable that accounts for time trend

gen rtrend_dev_travel=.
forvalues x=1/112{
	display `x'
	quietly regress real_travel_mil year if numcode==`x'
	predict _fitted, xb
	gen fitted`x'=_fitted if numcode==`x'
	drop _fitted
	replace rtrend_dev_travel=real_travel_mil-fitted`x' if numcode==`x'
}





sort isocode year

save merged.dta, replace

