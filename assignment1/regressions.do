clear
use merged.dta

*regressions using REAL_TRAVEL_MIL (for tables)

*These are the ten regressions in Table 1.A.i

regress real_travel_mil mega, robust cluster(country)
regress real_travel_mil olymph, robust cluster(country)
regress real_travel_mil solymph, robust cluster(country)
regress real_travel_mil wolymph, robust cluster(country)
regress real_travel_mil mcuph, robust cluster(country)

regress real_travel_mil mega_past, robust cluster(country)
regress real_travel_mil olymph_past, robust cluster(country)
regress real_travel_mil solymph_past, robust cluster(country)
regress real_travel_mil wolymph_past, robust cluster(country)
regress real_travel_mil mcuph_past, robust cluster(country)

*These are the ten regressions in Table 1.A.ii

xi: regress real_travel_mil mega i.country, robust cluster(country)
xi: regress real_travel_mil olymph i.country, robust cluster(country)
xi: regress real_travel_mil solymph i.country, robust cluster(country)
xi: regress real_travel_mil wolymph i.country, robust cluster(country)
xi: regress real_travel_mil mcuph i.country, robust cluster(country)

xi: regress real_travel_mil mega_past i.country, robust cluster(country)
xi: regress real_travel_mil olymph_past i.country, robust cluster(country)
xi: regress real_travel_mil solymph_past i.country, robust cluster(country)
xi: regress real_travel_mil wolymph_past i.country, robust cluster(country)
xi: regress real_travel_mil mcuph_past i.country, robust cluster(country)

*These are the ten regressions in Table 1.A.iii

xi: regress real_travel_mil mega i.year, robust cluster(country)
xi: regress real_travel_mil olymph i.year, robust cluster(country)
xi: regress real_travel_mil solymph i.year, robust cluster(country)
xi: regress real_travel_mil wolymph i.year, robust cluster(country)
xi: regress real_travel_mil mcuph i.year, robust cluster(country)

xi: regress real_travel_mil mega_past i.year, robust cluster(country)
xi: regress real_travel_mil olymph_past i.year, robust cluster(country)
xi: regress real_travel_mil solymph_past i.year, robust cluster(country)
xi: regress real_travel_mil wolymph_past i.year, robust cluster(country)
xi: regress real_travel_mil mcuph_past i.year, robust cluster(country)

*These are the ten regressions in Table 1.A.iv

xi: regress real_travel_mil mega i.year i.country, robust cluster(country)
xi: regress real_travel_mil olymph i.year i.country, robust cluster(country)
xi: regress real_travel_mil solymph i.year i.country, robust cluster(country)
xi: regress real_travel_mil wolymph i.year i.country, robust cluster(country)
xi: regress real_travel_mil mcuph i.year i.country, robust cluster(country)

xi: regress real_travel_mil mega_past i.year i.country, robust cluster(country)
xi: regress real_travel_mil olymph_past i.year i.country, robust cluster(country)
xi: regress real_travel_mil solymph_past i.year i.country, robust cluster(country)
xi: regress real_travel_mil wolymph_past i.year i.country, robust cluster(country)
xi: regress real_travel_mil mcuph_past i.year i.country, robust cluster(country)

*These are the ten regressions in Table 1.B.i

regress real_travel_mil megabid, robust cluster(country)
regress real_travel_mil olymp23h, robust cluster(country)
regress real_travel_mil solymp23h, robust cluster(country)
regress real_travel_mil wolymp23h, robust cluster(country)
regress real_travel_mil mcup23h, robust cluster(country)

regress real_travel_mil megabid_past, robust cluster(country)
regress real_travel_mil olymp23h_past, robust cluster(country)
regress real_travel_mil solymp23h_past, robust cluster(country)
regress real_travel_mil wolymp23h_past, robust cluster(country)
regress real_travel_mil mcup23h_past, robust cluster(country)

*These are the ten regressions in Table 1.B.ii

xi: regress real_travel_mil megabid i.country, robust cluster(country)
xi: regress real_travel_mil olymp23h i.country, robust cluster(country)
xi: regress real_travel_mil solymp23h i.country, robust cluster(country)
xi: regress real_travel_mil wolymp23h i.country, robust cluster(country)
xi: regress real_travel_mil mcup23h i.country, robust cluster(country)

xi: regress real_travel_mil megabid_past i.country, robust cluster(country)
xi: regress real_travel_mil olymp23h_past i.country, robust cluster(country)
xi: regress real_travel_mil solymp23h_past i.country, robust cluster(country)
xi: regress real_travel_mil wolymp23h_past i.country, robust cluster(country)
xi: regress real_travel_mil mcup23h_past i.country, robust cluster(country)

*These are the ten regressions in Table 1.B.iii

xi: regress real_travel_mil megabid i.year, robust cluster(country)
xi: regress real_travel_mil olymp23h i.year, robust cluster(country)
xi: regress real_travel_mil solymp23h i.year, robust cluster(country)
xi: regress real_travel_mil wolymp23h i.year, robust cluster(country)
xi: regress real_travel_mil mcup23h i.year, robust cluster(country)

xi: regress real_travel_mil megabid_past i.year, robust cluster(country)
xi: regress real_travel_mil olymp23h_past i.year, robust cluster(country)
xi: regress real_travel_mil solymp23h_past i.year, robust cluster(country)
xi: regress real_travel_mil wolymp23h_past i.year, robust cluster(country)
xi: regress real_travel_mil mcup23h_past i.year, robust cluster(country)

*These are the ten regressions in Table 1.B.iv

xi: regress real_travel_mil megabid i.year i.country, robust cluster(country)
xi: regress real_travel_mil olymp23h i.year i.country, robust cluster(country)
xi: regress real_travel_mil solymp23h i.year i.country, robust cluster(country)
xi: regress real_travel_mil wolymp23h i.year i.country, robust cluster(country)
xi: regress real_travel_mil mcup23h i.year i.country, robust cluster(country)

xi: regress real_travel_mil megabid_past i.year i.country, robust cluster(country)
xi: regress real_travel_mil olymp23h_past i.year i.country, robust cluster(country)
xi: regress real_travel_mil solymp23h_past i.year i.country, robust cluster(country)
xi: regress real_travel_mil wolymp23h_past i.year i.country, robust cluster(country)
xi: regress real_travel_mil mcup23h_past i.year i.country, robust cluster(country)

*These are the ten regressions in Table 1.C.i

regress real_travel_mil mega_bh, robust cluster(country)
regress real_travel_mil olymp_bh, robust cluster(country)
regress real_travel_mil solymp_bh, robust cluster(country)
regress real_travel_mil wolymp_bh, robust cluster(country)
regress real_travel_mil mcup_bh, robust cluster(country)

regress real_travel_mil mega_bhpast, robust cluster(country)
regress real_travel_mil olymp_bhpast, robust cluster(country)
regress real_travel_mil solymp_bhpast, robust cluster(country)
regress real_travel_mil wolymp_bhpast, robust cluster(country)
regress real_travel_mil mcup_bhpast, robust cluster(country)

*These are the ten regressions in Table 1.C.ii

xi: regress real_travel_mil mega_bh i.country, robust cluster(country)
xi: regress real_travel_mil olymp_bh i.country, robust cluster(country)
xi: regress real_travel_mil solymp_bh i.country, robust cluster(country)
xi: regress real_travel_mil wolymp_bh i.country, robust cluster(country)
xi: regress real_travel_mil mcup_bh i.country, robust cluster(country)

xi: regress real_travel_mil mega_bhpast i.country, robust cluster(country)
xi: regress real_travel_mil olymp_bhpast i.country, robust cluster(country)
xi: regress real_travel_mil solymp_bhpast i.country, robust cluster(country)
xi: regress real_travel_mil wolymp_bhpast i.country, robust cluster(country)
xi: regress real_travel_mil mcup_bhpast i.country, robust cluster(country)

*These are the ten regressions in Table 1.C.iii

xi: regress real_travel_mil mega_bh i.year, robust cluster(country)
xi: regress real_travel_mil olymp_bh i.year, robust cluster(country)
xi: regress real_travel_mil solymp_bh i.year, robust cluster(country)
xi: regress real_travel_mil wolymp_bh i.year, robust cluster(country)
xi: regress real_travel_mil mcup_bh i.year, robust cluster(country)

xi: regress real_travel_mil mega_bhpast i.year, robust cluster(country)
xi: regress real_travel_mil olymp_bhpast i.year, robust cluster(country)
xi: regress real_travel_mil solymp_bhpast i.year, robust cluster(country)
xi: regress real_travel_mil wolymp_bhpast i.year, robust cluster(country)
xi: regress real_travel_mil mcup_bhpast i.year, robust cluster(country)

*These are the ten regressions in Table 1.C.iv

xi: regress real_travel_mil mega_bh i.year i.country, robust cluster(country)
xi: regress real_travel_mil olymp_bh i.year i.country, robust cluster(country)
xi: regress real_travel_mil solymp_bh i.year i.country, robust cluster(country)
xi: regress real_travel_mil wolymp_bh i.year i.country, robust cluster(country)
xi: regress real_travel_mil mcup_bh i.year i.country, robust cluster(country)

xi: regress real_travel_mil mega_bhpast i.year i.country, robust cluster(country)
xi: regress real_travel_mil olymp_bhpast i.year i.country, robust cluster(country)
xi: regress real_travel_mil solymp_bhpast i.year i.country, robust cluster(country)
xi: regress real_travel_mil wolymp_bhpast i.year i.country, robust cluster(country)
xi: regress real_travel_mil mcup_bhpast i.year i.country, robust cluster(country)

******************************

*regressions for RTREND_DEV_TRAVEL (for tables)

*These are the ten regressions for Table 2.A.i

regress rtrend_dev_travel mega, robust cluster(country)
regress rtrend_dev_travel olymph, robust cluster(country)
regress rtrend_dev_travel solymph, robust cluster(country)
regress rtrend_dev_travel wolymph, robust cluster(country)
regress rtrend_dev_travel mcuph, robust cluster(country)

regress rtrend_dev_travel mega_past, robust cluster(country)
regress rtrend_dev_travel olymph_past, robust cluster(country)
regress rtrend_dev_travel solymph_past, robust cluster(country)
regress rtrend_dev_travel wolymph_past, robust cluster(country)
regress rtrend_dev_travel mcuph_past, robust cluster(country)

*These are the ten regressions for Table 2.A.ii

xi: regress rtrend_dev_travel mega i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymph i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymph i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymph i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcuph i.country, robust cluster(country)

xi: regress rtrend_dev_travel mega_past i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymph_past i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymph_past i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymph_past i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcuph_past i.country, robust cluster(country)

*These are the ten regressions for Table 2.A.iii

xi: regress rtrend_dev_travel mega i.year, robust cluster(country)
xi: regress rtrend_dev_travel olymph i.year, robust cluster(country)
xi: regress rtrend_dev_travel solymph i.year, robust cluster(country)
xi: regress rtrend_dev_travel wolymph i.year, robust cluster(country)
xi: regress rtrend_dev_travel mcuph i.year, robust cluster(country)

xi: regress rtrend_dev_travel mega_past i.year, robust cluster(country)
xi: regress rtrend_dev_travel olymph_past i.year, robust cluster(country)
xi: regress rtrend_dev_travel solymph_past i.year, robust cluster(country)
xi: regress rtrend_dev_travel wolymph_past i.year, robust cluster(country)
xi: regress rtrend_dev_travel mcuph_past i.year, robust cluster(country)

*These are the ten regressions for Table 2.A.iv.

xi: regress rtrend_dev_travel mega i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymph i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymph i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymph i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcuph i.year i.country, robust cluster(country)

xi: regress rtrend_dev_travel mega_past i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymph_past i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymph_past i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymph_past i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcuph_past i.year i.country, robust cluster(country)

*These are the ten regressions for Table 2.B.i

regress rtrend_dev_travel megabid, robust cluster(country)
regress rtrend_dev_travel olymp23h, robust cluster(country)
regress rtrend_dev_travel solymp23h, robust cluster(country)
regress rtrend_dev_travel wolymp23h, robust cluster(country)
regress rtrend_dev_travel mcup23h, robust cluster(country)

regress rtrend_dev_travel megabid_past, robust cluster(country)
regress rtrend_dev_travel olymp23h_past, robust cluster(country)
regress rtrend_dev_travel solymp23h_past, robust cluster(country)
regress rtrend_dev_travel wolymp23h_past, robust cluster(country)
regress rtrend_dev_travel mcup23h_past, robust cluster(country)

*These are the ten regressions for Table 2.B.ii

xi: regress rtrend_dev_travel megabid i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymp23h i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymp23h i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymp23h i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcup23h i.country, robust cluster(country)

xi: regress rtrend_dev_travel megabid_past i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymp23h_past i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymp23h_past i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymp23h_past i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcup23h_past i.country, robust cluster(country)


*These are the ten regressions for Table 2.B.iii

xi: regress rtrend_dev_travel megabid i.year, robust cluster(country)
xi: regress rtrend_dev_travel olymp23h i.year, robust cluster(country)
xi: regress rtrend_dev_travel solymp23h i.year, robust cluster(country)
xi: regress rtrend_dev_travel wolymp23h i.year, robust cluster(country)
xi: regress rtrend_dev_travel mcup23h i.year, robust cluster(country)


xi: regress rtrend_dev_travel megabid_past i.year, robust cluster(country)
xi: regress rtrend_dev_travel olymp23h_past i.year, robust cluster(country)
xi: regress rtrend_dev_travel solymp23h_past i.year, robust cluster(country)
xi: regress rtrend_dev_travel wolymp23h_past i.year, robust cluster(country)
xi: regress rtrend_dev_travel mcup23h_past i.year, robust cluster(country)

*These are the ten regressions for Table 2.B.iv

xi: regress rtrend_dev_travel megabid i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymp23h i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymp23h i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymp23h i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcup23h i.year i.country, robust cluster(country)

xi: regress rtrend_dev_travel megabid_past i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymp23h_past i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymp23h_past i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymp23h_past i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcup23h_past i.year i.country, robust cluster(country)

*These are the ten regressions for Table 2.C.i

regress rtrend_dev_travel mega_bh, robust cluster(country)
regress rtrend_dev_travel olymp_bh, robust cluster(country)
regress rtrend_dev_travel solymp_bh, robust cluster(country)
regress rtrend_dev_travel wolymp_bh, robust cluster(country)
regress rtrend_dev_travel mcup_bh, robust cluster(country)

regress rtrend_dev_travel mega_bhpast, robust cluster(country)
regress rtrend_dev_travel olymp_bhpast, robust cluster(country)
regress rtrend_dev_travel solymp_bhpast, robust cluster(country)
regress rtrend_dev_travel wolymp_bhpast, robust cluster(country)
regress rtrend_dev_travel mcup_bhpast, robust cluster(country)

*These are the ten regressions for Table 2.C.ii

xi: regress rtrend_dev_travel mega_bh i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymp_bh i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymp_bh i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymp_bh i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcup_bh i.country, robust cluster(country)

xi: regress rtrend_dev_travel mega_bhpast i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymp_bhpast i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymp_bhpast i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymp_bhpast i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcup_bhpast i.country, robust cluster(country)

*These are the ten regressions for Table 2.C.iii

xi: regress rtrend_dev_travel mega_bh i.year, robust cluster(country)
xi: regress rtrend_dev_travel olymp_bh i.year, robust cluster(country)
xi: regress rtrend_dev_travel solymp_bh i.year, robust cluster(country)
xi: regress rtrend_dev_travel wolymp_bh i.year, robust cluster(country)
xi: regress rtrend_dev_travel mcup_bh i.year, robust cluster(country)

xi: regress rtrend_dev_travel mega_bhpast i.year, robust cluster(country)
xi: regress rtrend_dev_travel olymp_bhpast i.year, robust cluster(country)
xi: regress rtrend_dev_travel solymp_bhpast i.year, robust cluster(country)
xi: regress rtrend_dev_travel wolymp_bhpast i.year, robust cluster(country)
xi: regress rtrend_dev_travel mcup_bhpast i.year, robust cluster(country)

*These are the ten regressions for Table 2.C.iv

xi: regress rtrend_dev_travel mega_bh i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymp_bh i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymp_bh i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymp_bh i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcup_bh i.year i.country, robust cluster(country)

xi: regress rtrend_dev_travel mega_bhpast i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel olymp_bhpast i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel solymp_bhpast i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel wolymp_bhpast i.year i.country, robust cluster(country)
xi: regress rtrend_dev_travel mcup_bhpast i.year i.country, robust cluster(country)

********************************************

*regressions for ARRIVALS (for tables)

drop if year<1995
drop if year==2008
drop if country=="Liberia"

*These are the ten regressions for Table 3.A.i

regress arrivals mega, robust cluster(country)
regress arrivals olymph, robust cluster(country)
regress arrivals solymph, robust cluster(country)
regress arrivals wolymph, robust cluster(country)
regress arrivals mcuph, robust cluster(country)

regress arrivals mega_past, robust cluster(country)
regress arrivals olymph_past, robust cluster(country)
regress arrivals solymph_past, robust cluster(country)
regress arrivals wolymph_past, robust cluster(country)
regress arrivals mcuph_past, robust cluster(country)

These are the ten regressions for Table 3.A.ii

xi: regress arrivals mega i.country, robust cluster(country)
xi: regress arrivals olymph i.country, robust cluster(country)
xi: regress arrivals solymph i.country, robust cluster(country)
xi: regress arrivals wolymph i.country, robust cluster(country)
xi: regress arrivals mcuph i.country, robust cluster(country)

xi: regress arrivals mega_past i.country, robust cluster(country)
xi: regress arrivals olymph_past i.country, robust cluster(country)
xi: regress arrivals solymph_past i.country, robust cluster(country)
xi: regress arrivals wolymph_past i.country, robust cluster(country)
xi: regress arrivals mcuph_past i.country, robust cluster(country)

These are the ten regressions for Table 3.A.iii

xi: regress arrivals mega i.year, robust cluster(country)
xi: regress arrivals olymph i.year, robust cluster(country)
xi: regress arrivals solymph i.year, robust cluster(country)
xi: regress arrivals wolymph i.year, robust cluster(country)
xi: regress arrivals mcuph i.year, robust cluster(country)

xi: regress arrivals mega_past i.year, robust cluster(country)
xi: regress arrivals olymph_past i.year, robust cluster(country)
xi: regress arrivals solymph_past i.year, robust cluster(country)
xi: regress arrivals wolymph_past i.year, robust cluster(country)
xi: regress arrivals mcuph_past i.year, robust cluster(country)

*These are the ten regressions for Table 3.A.iv

xi: regress arrivals mega i.year i.country, robust cluster(country)
xi: regress arrivals olymph i.year i.country, robust cluster(country)
xi: regress arrivals solymph i.year i.country, robust cluster(country)
xi: regress arrivals wolymph i.year i.country, robust cluster(country)
xi: regress arrivals mcuph i.year i.country, robust cluster(country)

xi: regress arrivals mega_past i.year i.country, robust cluster(country)
xi: regress arrivals olymph_past i.year i.country, robust cluster(country)
xi: regress arrivals solymph_past i.year i.country, robust cluster(country)
xi: regress arrivals wolymph_past i.year i.country, robust cluster(country)
xi: regress arrivals mcuph_past i.year i.country, robust cluster(country)

*These are the ten regressions for Table 3.B.i

regress arrivals megabid, robust cluster(country)
regress arrivals olymp23h, robust cluster(country)
regress arrivals solymp23h, robust cluster(country)
regress arrivals wolymp23h, robust cluster(country)
regress arrivals mcup23h, robust cluster(country)

regress arrivals megabid_past, robust cluster(country)
regress arrivals olymp23h_past, robust cluster(country)
regress arrivals solymp23h_past, robust cluster(country)
regress arrivals wolymp23h_past, robust cluster(country)
regress arrivals mcup23h_past, robust cluster(country)

*These are the ten regressions for Table 3.B.ii

xi: regress arrivals megabid i.country, robust cluster(country)
xi: regress arrivals olymp23h i.country, robust cluster(country)
xi: regress arrivals solymp23h i.country, robust cluster(country)
xi: regress arrivals wolymp23h i.country, robust cluster(country)
xi: regress arrivals mcup23h i.country, robust cluster(country)

xi: regress arrivals megabid_past i.country, robust cluster(country)
xi: regress arrivals olymp23h_past i.country, robust cluster(country)
xi: regress arrivals solymp23h_past i.country, robust cluster(country)
xi: regress arrivals wolymp23h_past i.country, robust cluster(country)
xi: regress arrivals mcup23h_past i.country, robust cluster(country)

*These are the ten regressions for Table 3.B.iii

xi: regress arrivals megabid i.year, robust cluster(country)
xi: regress arrivals olymp23h i.year, robust cluster(country)
xi: regress arrivals solymp23h i.year, robust cluster(country)
xi: regress arrivals wolymp23h i.year, robust cluster(country)
xi: regress arrivals mcup23h i.year, robust cluster(country)

xi: regress arrivals megabid_past i.year, robust cluster(country)
xi: regress arrivals olymp23h_past i.year, robust cluster(country)
xi: regress arrivals solymp23h_past i.year, robust cluster(country)
xi: regress arrivals wolymp23h_past i.year, robust cluster(country)
xi: regress arrivals mcup23h_past i.year, robust cluster(country)

*These are the ten regressions for Table 3.B.iv

xi: regress arrivals megabid i.year i.country, robust cluster(country)
xi: regress arrivals olymp23h i.year i.country, robust cluster(country)
xi: regress arrivals solymp23h i.year i.country, robust cluster(country)
xi: regress arrivals wolymp23h i.year i.country, robust cluster(country)
xi: regress arrivals mcup23h i.year i.country, robust cluster(country)

xi: regress arrivals megabid_past i.year i.country, robust cluster(country)
xi: regress arrivals olymp23h_past i.year i.country, robust cluster(country)
xi: regress arrivals solymp23h_past i.year i.country, robust cluster(country)
xi: regress arrivals wolymp23h_past i.year i.country, robust cluster(country)
xi: regress arrivals mcup23h_past i.year i.country, robust cluster(country)

*These are the ten regressions for Table 3.C.i

regress arrivals mega_bh, robust cluster(country)
regress arrivals olymp_bh, robust cluster(country)
regress arrivals solymp_bh, robust cluster(country)
regress arrivals wolymp_bh, robust cluster(country)
regress arrivals mcup_bh, robust cluster(country)

regress arrivals mega_bhpast, robust cluster(country)
regress arrivals olymp_bhpast, robust cluster(country)
regress arrivals solymp_bhpast, robust cluster(country)
regress arrivals wolymp_bhpast, robust cluster(country)
regress arrivals mcup_bhpast, robust cluster(country)

*These are the ten regressions for Table 3.C.ii

xi: regress arrivals mega_bh i.country, robust cluster(country)
xi: regress arrivals olymp_bh i.country, robust cluster(country)
xi: regress arrivals solymp_bh i.country, robust cluster(country)
xi: regress arrivals wolymp_bh i.country, robust cluster(country)
xi: regress arrivals mcup_bh i.country, robust cluster(country)

xi: regress arrivals mega_bhpast i.country, robust cluster(country)
xi: regress arrivals olymp_bhpast i.country, robust cluster(country)
xi: regress arrivals solymp_bhpast i.country, robust cluster(country)
xi: regress arrivals wolymp_bhpast i.country, robust cluster(country)
xi: regress arrivals mcup_bhpast i.country, robust cluster(country)

*These are the ten regressions for Table 3.C.iii

xi: regress arrivals mega_bh i.year, robust cluster(country)
xi: regress arrivals olymp_bh i.year, robust cluster(country)
xi: regress arrivals solymp_bh i.year, robust cluster(country)
xi: regress arrivals wolymp_bh i.year, robust cluster(country)
xi: regress arrivals mcup_bh i.year, robust cluster(country)

xi: regress arrivals mega_bhpast i.year, robust cluster(country)
xi: regress arrivals olymp_bhpast i.year, robust cluster(country)
xi: regress arrivals solymp_bhpast i.year, robust cluster(country)
xi: regress arrivals wolymp_bhpast i.year, robust cluster(country)
xi: regress arrivals mcup_bhpast i.year, robust cluster(country)

*These are the ten regressions for Table 3.C.iv.

xi: regress arrivals mega_bh i.year i.country, robust cluster(country)
xi: regress arrivals olymp_bh i.year i.country, robust cluster(country)
xi: regress arrivals solymp_bh i.year i.country, robust cluster(country)
xi: regress arrivals wolymp_bh i.year i.country, robust cluster(country)
xi: regress arrivals mcup_bh i.year i.country, robust cluster(country)

xi: regress arrivals mega_bhpast i.year i.country, robust cluster(country)
xi: regress arrivals olymp_bhpast i.year i.country, robust cluster(country)
xi: regress arrivals solymp_bhpast i.year i.country, robust cluster(country)
xi: regress arrivals wolymp_bhpast i.year i.country, robust cluster(country)
xi: regress arrivals mcup_bhpast i.year i.country, robust cluster(country)




