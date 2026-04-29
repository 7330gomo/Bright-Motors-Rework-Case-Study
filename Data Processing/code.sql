Select*
From bright_motors.sales.dataset;


--columns in my dataset
--year,make,model,trim,body,transmission,vin,state,condition,odometer,color,interior,seller,mmr,sellingprice,saledate.

---------------------- ---- 1. YEAR---------------------------------------

--- to check if there are null values in the column year
Select year
From bright_motors.sales.dataset
where year IS NULL;

-- check the recent release year of a car
Select MAX(year)
From bright_motors.sales.dataset;

-- check the early releaase year of a car
Select MIN(year)
From bright_motors.sales.dataset;

-- check all the data in the column year
Select year
From bright_motors.sales.dataset ;



------------------------------------------- 2. Make ---------------------------------

--- to check if there are null values in the column make
Select make
From bright_motors.sales.dataset
where make IS NULL;

--- to see the different manufacturers and changing values to lower case to remove duplicates
Select DISTINCT(LOWER(make)) AS Manufacturer
From bright_motors.sales.dataset;



------------------------------------- 3. Model ---------------------------------

--- to check if there are null values in the column model
Select model
From bright_motors.sales.dataset
where model IS NULL;

--- to see the different models and changing the values to lowercase to remove duplicates
Select DISTINCT(LOWER(model)) AS Car_Model
From bright_motors.sales.dataset;




---------------------------------- 4. Trim ---------------------------------

--- to check if there are null values in the column trim
Select trim
From bright_motors.sales.dataset
where trim IS NULL;


--- to see different trims and changing the values to lowercase to remove duplicates
Select distinct(LOWER(trim)) AS Car_Trim
From bright_motors.sales.dataset;

--- to filter out non valid trim names
Select distinct(LOWER(trim)) AS Car_Trim
From bright_motors.sales.dataset
WHERE LOWER(trim) IN ('base', 'se', 'sel', 'sl', 's', 'sv', 'sr', 'sx', 'lx', 'ex', 'le', 'ls', 'lt', 'lt1', 'lt2', 'lt3', 'ltz', 'ls fleet', 'ltz fleet', 'ls premium', 'ls sport', 'sport', 'touring', 'limited', 'premium', 'ultimate', 'signature', 'luxury', 'comfort', 'standard', 'value edition', 'deluxe', 'premier', 'xle', 'xse', 'xls', 'xlt', 'sr5', 'le eco', 'le plus', 'ex-l', 'ex v-6', 'ex-l v-6', 'ex-p', 'dx', 'lx-s', 'lx-p', 'sxt', 'srt', 'srt8', 'srt8 392', 'rt', 'r/t plus', 'r/t scat pack', 'quattro', 's-line', 'prestige', 'premium plus', 's4', 's5', 's6', 's8', 'm3', 'm5', 'm6', 'm sport', 'amg', 'c63 amg', 'e63 amg', 's63 amg', 'sl63 amg', 'slk55 amg', 'xl', 'xlt', 'lariat', 'king ranch', 'platinum', 'denali', 'sle', 'slt', 'slt-1', 'slt-2', 'latitude', 'altitude', 'trailhawk', 'overland', 'sahara', 'rubicon', 'gt', 'gts', 'gtz', 'gxp', 'ss', 'zl1', 'zr1', 'z06', 'sti', 'wrx sti', 'wrx limited', 'nismo', 'type-s', 'hse', 'hse lux', 'autobiography', 'portfolio', 'grand touring', 'signature limited', 'black edition', 'cooper', 'cooper s', 'cooper clubman', 'cooper countryman', 'cooper coupe', 'john cooper works', 'john cooper works all4', 'xdrive28i', 'xdrive35i', 'xdrive35d', 'xdrive50i', '328i', '335i', '528i', '535i', '550i', '740i', '750i', '750li', 'm235i', 'm550i', 'rx 350', 'rx 450h', 'gs 350', 'gs 450h', 'ls 460', 'ls 430', 'is 250', 'is 350', 'is f');
--WHERE LOWER(trim) IN (
  --'lx','se','le','xle','ls','lt','ltz','2lt','1lt','328i','335i','528i','535i','740i','750li','c250','c300','e350','s550', 'g37','fx35','wrx','sti','denali','lariat','king ranch','platinum', 'srt8','ralliart','rubicon','sahara','overland','trailhawk','autobahn','wolfsburg edition','r-line','quattro','xdrive35i','sdrive28i','t5','t6','tdi','gls','ml350','glk350', 'xkr','xj8')




----------------- 5. Body ---------------------------------

--- to check if there are null values in the column body
Select body
From bright_motors.sales.dataset
where body IS NULL;

----to see differnt car bodies and changing values to lowercase to remove duplicates
Select Distinct(lower(body)) AS Car_Body
From bright_motors.sales.dataset;



-------------6. Transmission ---------------------------------

--- to check if there are null values in the column transmission
Select transmission
From bright_motors.sales.dataset
where transmission IS NULL;

--- to see different transmission types and filter out invalid transmission names
Select distinct(transmission) AS Car_Transmission
from bright_motors.sales.dataset
WHERE transmission IN ('automatic','manual');




------------------------7. Vin ---------------------------------

--- to check if there are null values in the column vin
Select vin
From bright_motors.sales.dataset
where vin IS NOT NULL;


---------------------8. State ---------------------------------

--- to check if there are null values in the column state
Select state
From bright_motors.sales.dataset
where state IS NULL;


--- to see the different states and filter out values that are not in the below format
Select distinct(state) AS Different_states
From bright_motors.sales.dataset
WHERE state like "__";



------------------------------9. Condition ---------------------------------

--- to check if there are null values in the column condition
Select condition
From bright_motors.sales.dataset
where condition IS NULL;

--- to see different conditions 
Select distinct(condition) AS Car_Condition
From bright_motors.sales.dataset;

---to see the maximum value for the car condition
Select max(condition) AS Max_Condition
From bright_motors.sales.dataset;

---to see the minimum value for the car condition
Select min(condition) AS Min_Condition
From bright_motors.sales.dataset;



------------------------10. Odometer ---------------------------------

--- to check if there null values in the column odometer
Select odometer
From bright_motors.sales.dataset
where odometer IS NULL;

--- to see different odometer values
Select distinct(odometer) AS Odometer
From bright_motors.sales.dataset;

---to see the maximum value for the car milleage
Select max(odometer) AS Odometer
From bright_motors.sales.dataset;


---to see the minimum value for the car milleage
Select min(odometer) AS Odometer
From bright_motors.sales.dataset;



-----------------------------11. Color----------------------------

-- to check if there are null values in the column color
Select color
From bright_motors.sales.dataset
where color IS NULL;

--- to see different color
Select distinct(color) AS Car_color
From bright_motors.sales.dataset;

--- to see different color and filter out values that are not mentioned below
Select distinct(color) AS Car_color
From bright_motors.sales.dataset
WHERE color NOT IN (
    'white','gray','black','red','silver','blue','brown','beige',
    'purple','burgundy','gold','yellow','green','charcoal',
    'orange','off-white','turquoise','pink','lime'
);



------------------------------------12. Interior-----------------------------

-- to check if there are null values in the interior column 
Select interior
From bright_motors.sales.dataset
where interior IS NULL;

--- to see different interiors
Select distinct(interior) AS Interior
From bright_motors.sales.dataset;

--- to see different interiors and filter the invalid value
Select distinct(interior ) AS Car_Interior
From bright_motors.sales.dataset
where interior NOT LIKE 'â%';




----------------------13. Seller--------------------------

---to check null values in the column
Select seller
From bright_motors.sales.dataset
WHERE seller IS NULL;

---to see different seller
Select distinct(seller ) AS Car_seller
From bright_motors.sales.dataset;




---------------------------- 14. MMR----------------------------

---to check null values in the column
Select mmr
From bright_motors.sales.dataset
WHERE mmr IS NULL;

---to see different mmr values
Select distinct(mmr) AS MMR
From bright_motors.sales.dataset;


---------------------------15. Saleprice----------------------------

---to check null values in the column
Select sellingprice
From bright_motors.sales.dataset
WHERE sellingprice IS NULL ;

---to see different sellingprice values
Select distinct(sellingprice) AS sellingprice
From bright_motors.sales.dataset;

--to see average selling price
Select avg(sellingprice) AS avg_sellingprice
From bright_motors.sales.dataset;

--to calculat margin profit using sellingprice and mmr(as cost estimate)
Select sellingprice,
 mmr,
 ROUND(((sellingprice - mmr) / sellingprice) * 100, 1) AS profit_margin
From bright_motors.sales.dataset;

--see the hightest profit made
Select max(ROUND(((sellingprice - mmr) / sellingprice) * 100, 1)) AS max_profit_margin
From bright_motors.sales.dataset;


--see the lowest profit made
Select min(ROUND(((sellingprice - mmr) / sellingprice) * 100, 1)) AS min_profit_margin
From bright_motors.sales.dataset;


---------------------------16. SaleDate----------------------------

---to check null values in the column
Select saledate
From bright_motors.sales.dataset
WHERE saledate IS NULL;

---to see starting date
Select min(saledate) AS start_date
From bright_motors.sales.dataset;

---to see recent date
Select max(saledate) AS recent_date
From bright_motors.sales.dataset;

-- to see different values in the column
SELECT DISTINCT saledate
FROM bright_motors.sales.dataset
LIMIT 1000;

--to change the timestamp into a proper format and filters out NULL values
SELECT 
  date_format(
    try_to_timestamp(
      regexp_replace(saledate, '^[A-Za-z]{3} ', ''),
      'MMM dd yyyy HH:mm:ss'
    ),
    'yyyy-MM-dd HH:mm:ss'
  ) AS new_saledate
FROM bright_motors.sales.dataset
WHERE try_to_timestamp(
        regexp_replace(saledate, '^[A-Za-z]{3} ', ''),
        'MMM dd yyyy HH:mm:ss'
      ) IS NOT NULL;
 

--to extract month name ,year,day,day name from the timestamp and created a weekdays classification
SELECT  saledate,
  date_format(
    try_to_timestamp(
      regexp_replace(saledate, '^[A-Za-z]{3} ', ''),
      'MMM dd yyyy HH:mm:ss'
    ),
    'yyyy-MM-dd HH:mm:ss'
  ) AS new_saledate,
  year(new_saledate)  AS year,
  date_format(new_saledate, 'MMMM') AS month_name,
  date_format(new_saledate, 'EEE') AS day_name,
  day(new_saledate)   AS day,
  hour(new_saledate)  AS hour,
  CASE 
  WHEN day_name IN ('Mon', 'Tue', 'Wed', 'Thu', 'Fri') THEN 'Weekday'
  ELSE 'Weekend'
END AS Weekdays_classification
  FROM bright_motors.sales.dataset;
  




----------------------------------------------------------------------------------------------------------------------------------------------------------


            ---CODE--

SELECT year AS Release_year,
CASE
    WHEN year BETWEEN 1982 AND 1989 THEN ' Vintage-1980s '
    WHEN year BETWEEN 1990 AND 1999 THEN ' Old-1990s '
    WHEN year BETWEEN 2000 AND 2009 THEN ' Mid-age "2000s"'    
    WHEN year BETWEEN 2010 AND 2015 THEN ' Recent "2010-2015" '
    ELSE 'Out of Range'
END AS Release_year_group,


COUNT(*) AS sold_cars,


 --LOWER(make) AS Manufacturer,
CASE
    WHEN lower(make) IN ('landrover') THEN 'land rover'
    WHEN lower(make) IN ('mercedes','mercedes-b') THEN 'mercedes-benz'
    WHEN lower(make) = 'vw' THEN 'volkswagen'
    WHEN lower(make) IN ('gmc truck') THEN 'gmc'
    WHEN lower(make) IN ('chev truck') THEN 'chevrolet'
    WHEN lower(make) IN ('ford truck','ford tk') THEN 'ford'
    WHEN lower(make) IN ('mazda tk') THEN 'mazda'
    WHEN lower(make) IN ('hyundai tk') THEN 'hyundai'
    WHEN lower(make) IN ('dodge tk') THEN 'dodge'
    WHEN lower(make) = 'null' THEN NULL
    ELSE lower(make)
END AS manufacturer,
CASE
 
    WHEN LOWER(make) IN (
        'toyota','honda','nissan','mazda','subaru','mitsubishi','suzuki',
        'lexus','acura','infiniti','scion','isuzu'
    ) THEN 'Japanese'
    WHEN LOWER(make) IN (
        'bmw','audi','volkswagen','porsche','mini',
        'mercedes-benz','smart'
    ) THEN 'German'
    WHEN LOWER(make) IN (
        'ford','chevrolet','gmc','dodge','chrysler','jeep','cadillac',
        'buick','lincoln','tesla','ram','pontiac','saturn','mercury',
        'hummer','oldsmobile','plymouth'
    ) THEN 'American'
    WHEN LOWER(make) IN (
        'hyundai','kia'
    ) THEN 'Korean'
    WHEN LOWER(make) IN (
        'fiat','ferrari','lamborghini','maserati'
    ) THEN 'Italian'
    WHEN LOWER(make) IN (
        'land rover','jaguar','bentley','rolls-royce','aston martin','mini'
    ) THEN 'British'
    WHEN LOWER(make) IN (
        'volvo','saab'
    ) THEN 'Scandinavian'
    WHEN LOWER(make) LIKE '%tk%' THEN NULL
    WHEN LOWER(make) IN ('null','dot','airstream') THEN NULL
    ELSE 'Other'
END AS manufacturer_group,

CASE
    WHEN LOWER(model) IN ('range','rangerover','range rover') THEN 'range rover'
    WHEN LOWER(model) IN ('750i','750li') THEN '7 series'
    WHEN LOWER(model) = 'f150' THEN 'f-150'
    WHEN LOWER(model) = 'f250' THEN 'f-250'
    WHEN LOWER(model) = 'f350' THEN 'f-350 super duty'
    WHEN LOWER(model) = 'rx 400h' THEN 'rx 400h'
    WHEN LOWER(model) = 'gs 450h' THEN 'gs 450h'
    WHEN LOWER(model) = 'g37 coupe' THEN 'g37 coupe'
    WHEN LOWER(model) = 'g37 convertible' THEN 'g37 convertible'
    WHEN LOWER(model) IN ('rangerover','range') THEN 'range rover'
    WHEN LOWER(model) = 'subrbn' THEN 'suburban'
    WHEN LOWER(model) = 'ridgelin' THEN 'ridgeline'
    WHEN LOWER(model) = 'expeditn' THEN 'expedition'
    WHEN LOWER(model) = 'mountnr' THEN 'mountaineer'
    WHEN LOWER(model) = 'uplandr' THEN 'uplander'
    WHEN LOWER(model) = 'siera' THEN 'sierra'
    WHEN LOWER(model) = 'pathfind' THEN 'pathfinder'
    ELSE LOWER(model)
END AS car_model,

CASE 
    WHEN LOWER(model) IN (
        'f-150','f-250','f-350',
        'silverado 1500','silverado 2500','silverado 3500',
        'ram 1500','ram 2500','ram 3500',
        'tacoma','tundra','frontier','ranger','colorado','canyon',
        's-10','dakota','titan','ridgeline','avalanche',
        'savana cargo','sprinter cargo'
    )
    THEN 'Truck'
    WHEN  LOWER(model) IN (
        'odyssey','sienna','caravan','grand caravan','town and country',
        'transit connect','express van','econoline cargo','econoline wagon',
        'sprinter van','nv passenger','nv cargo','venture','sedona'
    )
    THEN 'Van'
    WHEN LOWER(model) IN (
        'rav4','cr-v','rogue','rogue select','escape','escape hybrid',
        'sportage','tucson','cx-5','cx-7','cx-9','juke','encore',
        'compass','patriot','x1','x3','x4','q3','q5','gla-class','glk-class',
        'highlander','highlander hybrid','pilot','murano','edge','equinox',
        'traverse','outlander','outlander sport','forester','xc60','xc70',
        'rx 300','rx 330','rx 350','rx 400h','rx 450h','mdx','gx 470','gx 460',
        'x5','q7','grand cherokee','durango','enclave','tahoe','suburban',
        'expedition','expedition el','armada','yukon','yukon xl',
        'escalade','escalade esv','escalade ext','land cruiser','navigator',
        'navigator l','range rover','range rover sport','gl-class','sequoia'
    )
    THEN 'SUV'
    WHEN  LOWER(model) IN (
        'cx-5','cx-7','cx-9','venza','nitro','captiva sport','terrain','vue',
        'murano crosscabriolet','crosstour'
    )
    THEN 'Crossover'
    WHEN  LOWER(model) IN (
        'mustang','camaro','challenger','charger','370z','350z','corvette',
        'corvette stingray','gt-r','wrx','brz','fr-s','mx-5','miata',
        's2000','911','cayman','boxster','r8','tt','tts','tt rs',
        'm3','m4','m5','m6','z3','z4','is f','rc f','genesis coupe',
        'mustang svt cobra','shelby gt500'
    )
    THEN 'Sports Car'
    WHEN  LOWER(model) IN (
        'altima','maxima','camry','camry hybrid','camry solara','corolla',
        'accord','accord hybrid','accord crosstour','civic','civic del sol',
        'sonata','sonata hybrid','elantra','elantra coupe','elantra gt',
        'optima','fusion','fusion hybrid','fusion energi','malibu',
        'malibu hybrid','malibu classic','malibu maxx','impala',
        'impala limited','sentra','mazda3','mazda6','impreza','legacy',
        'taurus','taurus x','200','300','300m','lacrosse','regal','century',
        'g6','g5','aura','milan','sable','tsx','tl','ilx','is 250','is 300',
        'is 350','gs 300','gs 350','gs 400','gs 430','gs 450h','gs 460',
        'es 300','es 330','es 350','es 300h','ls 400','ls 430','ls 460',
        'ls 600h l','q50','q60','q70','m35','m37','m45','m56',
        '3 series','5 series','7 series','1 series',
        'a3','a4','a5','a6','a7','a8',
        'c-class','e-class','s-class'
    )
    THEN 'Sedan'
    WHEN  LOWER(model) IN (
        'model s','volt','leaf','prius','prius c','prius v','prius plug-in',
        'insight','i-miev','karma','mkz hybrid','civic hybrid',
        'c-max hybrid','c-max energi','fusion hybrid','fusion energi',
        'camry hybrid','accord hybrid','rx 400h','rx 450h',
        'malibu hybrid','escape hybrid'
    )
    THEN 'Hybrid / Electric'

    WHEN LOWER(model)IN (
        'bentley','rolls-royce','aston martin','maserati','ferrari',
        'lamborghini','porsche','jaguar','lexus','acura','infiniti',
        'lincoln','cadillac','mercedes','bmw','audi'
    )
    THEN 'Luxury Brand'

    ELSE 'Other'
END AS Model_category,

/*
CASE
    WHEN lower(car_model) IN (
        'f-150','f-250','f-350','f150','f250','f350',
        'silverado 1500','silverado 2500hd','silverado 2500','silverado 3500',
        'ram','ram 1500','ram 2500','ram 3500','ram3500',
        'tacoma','tundra','frontier','ranger','colorado','canyon',
        's-10','s10','dakota','titan','ridgeline','avalanche',
        'sierra 1500','sierra 2500hd','sierra 3500hd','sierra 3500',
        'savana cargo','express cargo','sprinter cargo','c/k 1500 series',
        'c/k 2500 series','c/k 3500 series','b-series truck','pickup'
    )
    THEN 'Truck'
    WHEN lower(car_model) IN (
        'odyssey','sienna','caravan','grand caravan','town and country','twn&country',
        'transit connect','express','econoline cargo','econoline wagon',
        'sprinter','nv passenger','nv cargo','venture','sedona',
        'windstar','windstar cargo','venture','uplander','venture',
        'astro cargo','astro','venture','montana sv6','montana'
    )
    THEN 'Van'
    WHEN lower(car_model) IN (
        'rav4','cr-v','rogue','rogue select','escape','escape hybrid','edge',
        'sportage','tucson','cx-5','cx-7','cx-9','juke','encore',
        'compass','patriot','x1','x3','x4','q3','q5','q7',
        'gla-class','glk-class','gl-class','g-class',
        'highlander','highlander hybrid','pilot','murano','equinox',
        'traverse','outlander','outlander sport','forester','xc60','xc70','xc90',
        'rx 300','rx 330','rx 350','rx 400h','rx 450h','gx 470','gx 460',
        'mdx','rdx','x5','x6','grand cherokee','durango','enclave',
        'tahoe','suburban','expedition','expedition el','armada',
        'yukon','yukon xl','escalade','escalade esv','escalade ext',
        'land cruiser','navigator','navigator l','range rover','range rover sport',
        'sequoia','liberty','cherokee','xterra','tribeca'
    )
    THEN 'SUV'
    WHEN lower(car_model) IN (
        'cx-5','cx-7','cx-9','venza','nitro','captiva sport','terrain','vue',
        'crosstour','murano crosscabriolet','outback'
    )
    THEN 'Crossover'
    WHEN lower(car_model) IN (
        'mustang','camaro','challenger','charger','corvette','corvette stingray',
        '370z','350z','gt-r','wrx','brz','fr-s','mx-5 miata','miata',
        's2000','911','cayman','boxster','r8','tt','tts','tt rs',
        'm3','m4','m5','m6','z3','z4','is f','rc f','genesis coupe',
        'shelby gt500','mustang svt cobra','viper','rx-8','f430','gallardo',
        'carrera','cayman s','exige','sls amg gt'
    )
    THEN 'Sports Car'
    WHEN lower(car_model) IN (
        'altima','maxima','camry','camry hybrid','corolla','accord','civic',
        'sonata','elantra','optima','fusion','malibu','impala','sentra',
        'mazda3','mazda6','impreza','legacy','taurus','lacrosse','regal',
        'tsx','tl','ilx','is 250','is 300','is 350','gs 300','gs 350',
        'es 300','es 350','ls 430','ls 460','q50','q60','q70','3 series',
        '5 series','7 series','1 series','a3','a4','a5','a6','a7','a8',
        'c-class','e-class','s-class','cla-class','clk-class','cls-class',
        'cts','ats','xts','mks','mkz','mkc'
    )
    THEN 'Sedan'
    WHEN lower(car_model) IN (
        'model s','leaf','volt','prius','prius c','prius v','prius plug-in',
        'insight','i-miev','karma','civic hybrid','accord hybrid',
        'camry hybrid','fusion hybrid','fusion energi','c-max hybrid',
        'rx 450h','rx 400h','escape hybrid','malibu hybrid','mkz hybrid',
        'es 300h','gs 450h','ls 600h l','highlander hybrid'
    )
    THEN 'Hybrid / Electric'
    WHEN lower(car_model) IN (
        'bentley','rolls-royce','aston martin','maserati','ferrari',
        'lamborghini','porsche','jaguar','lexus','acura','infiniti',
        'lincoln','cadillac','mercedes','bmw','audi'
    )
    THEN 'Luxury Brand'
    WHEN lower(car_model) IN ('null','')
    THEN 'Unknown'
    ELSE 'Other'
END AS car_category,
*/

LOWER(trim) AS Car_trim,
CASE
    WHEN LOWER(trim) IN (
        'base','l','ls','lx','gl','dx','ce','standard'
    ) THEN 'Basic'
    WHEN LOWER(trim) IN (
        'se','le','sel','sle','sv','xl','xlt','sx','ex','s','sl','sr','es','gs'
    ) THEN 'Standard'
    WHEN LOWER(trim) IN (
        'premium','luxury','platinum','prestige','signature','ultimate',
        'denali','pure premium','premium plus quattro','premium quattro'
    ) THEN 'Luxury'
    WHEN LOWER(trim) IN (
        'sport','sport 2.0t','turbo','gt','gts','wrx','sti','srt8','ss',
        'c63 amg','e63 amg','amg','type-s','ralliart'
    ) THEN 'Sport/Performance'
    WHEN LOWER(trim) IN (
        '4x4','awd','fx4','fx2','rubicon','overland','trailhawk',
        'tremor','raptor','prerunner'
    ) THEN 'Off-Road'
    WHEN LOWER(trim) IN (
        'hybrid','ex hybrid','s hybrid','electric','bev'
    ) THEN 'Hybrid/Electric'
    WHEN LOWER(trim) IN (
        'tdi','tdi se','bluetec','e350 bluetec'
    ) THEN 'Diesel'
    WHEN LOWER(trim) IN (
        'work truck','cargo','van','fleet','ls fleet','lt fleet','police'
    ) THEN 'Commercial'
    WHEN LOWER(trim) IN (
        'limited','special edition','black edition','signature limited'
    ) THEN 'Special Edition'
    WHEN LOWER(trim) IN (
        'technology package','convenience group',
        'advance and entertainment packages'
    ) THEN 'Package'
    WHEN LOWER(trim) IS NULL OR LOWER(trim) = 'null' THEN 'Unknown'
    ELSE 'Other'
END AS trim_category,
Lower(body) AS car_body,

CASE
    WHEN LOWER(body) IN ('suv') THEN 'SUV'
    WHEN LOWER(body) IN ('sedan','g sedan') THEN 'Sedan'
    WHEN LOWER(body) IN (
        'coupe','g coupe','elantra coupe','genesis coupe',
        'cts coupe','cts-v coupe','koup'
    ) THEN 'Coupe'
    WHEN LOWER(body) IN (
        'convertible','g convertible','g37 convertible',
        'q60 convertible','beetle convertible',
        'granturismo convertible'
    ) THEN 'Convertible'
    WHEN LOWER(body) IN (
        'wagon','cts wagon','tsx sport wagon'
    ) THEN 'Wagon'
    WHEN LOWER(body) IN (
        'minivan','van','e-series van','transit van',
        'promaster cargo van','ram van'
    ) THEN 'Van/Minivan'
    WHEN LOWER(body) IN (
        'crew cab','double cab','crewmax cab','access cab','king cab',
        'supercrew','extended cab','supercab','regular cab',
        'club cab','xtracab','quad cab','mega cab',
        'cab plus','cab plus 4','regular-cab'
    ) THEN 'Pickup Truck'
     WHEN lower(body) IN (
        'hatchback' )
    THEN 'Hatchback'
    WHEN LOWER(body) IN ('null','navitgation') THEN NULL
    ELSE 'Other'
END AS car_body_group,
transmission,
vin,

state,
case 
  when state in ('qc','ab','on','ns') then 'canada'
  when state = 'pr' then 'us territory'
  when state in ('ca','or','wa','nv','az','ut','co','nm','hi','ak') then 'usa - west'
  when state in ('mn','wi','il','in','oh','mi','mo','ne','ia','nd','sd','ks') then 'usa - midwest'
  when state in ('tx','fl','ga','nc','sc','tn','al','ms','la','ok','va','md','ar','ky','wv','de','dc') then 'usa - south'
  when state in ('ny','nj','pa','ma','ct','ri','vt','nh','me') then 'usa - northeast'
  else 'unknown'
end as geo_region,

condition,
    CASE 
    WHEN condition BETWEEN 1 AND 10 THEN 'Excellent'
    WHEN condition BETWEEN 11 AND 20 THEN 'Very Good'
    WHEN condition BETWEEN 21 AND 30 THEN 'Good'
    WHEN condition BETWEEN 31 AND 40 THEN 'Fair'
    WHEN condition BETWEEN 41 AND 50 THEN 'Poor'
    ELSE 'Unknown'
END AS condition_category,

odometer,
CASE 
    WHEN odometer BETWEEN 1 AND 10000 THEN 'Very Low Mileage'
    WHEN odometer BETWEEN 10001 AND 30000 THEN 'Low Mileage'
    WHEN odometer BETWEEN 30001 AND 60000 THEN 'Moderate Mileage'
    WHEN odometer BETWEEN 60001 AND 100000 THEN 'High Mileage'
    WHEN odometer <= 999999 THEN 'Very High Mileage'
    ELSE 'Unknown'
END AS mileage_category,
color,
interior,
seller,
mmr,

sellingprice,
sold_cars * sellingprice AS total_revenue,
avg(sellingprice) AS avg_sellingprice,
ROUND(((sellingprice - mmr) / sellingprice) * 100, 1) AS profit_margin,

CASE 
    WHEN ((sellingprice - mmr) / sellingprice) * 100 >= 20 THEN 'High Margin'
    
    WHEN ((sellingprice - mmr) / sellingprice) * 100 BETWEEN 10 AND 19.99 
        THEN 'Medium Margin'
    
    WHEN ((sellingprice - mmr) / sellingprice) * 100 < 10 
        THEN 'Low Margin'
    
    ELSE 'Invalid / Check Data'
END AS profit_margin_tier,

saledate, date_format(
    try_to_timestamp(
      regexp_replace(saledate, '^[A-Za-z]{3} ', ''),
      'MMM dd yyyy HH:mm:ss'
    ),
    'yyyy-MM-dd HH:mm:ss'
  ) AS new_saledate,
  year(new_saledate)  AS year,
  date_format(new_saledate, 'MMMM') AS month_name,
  date_format(new_saledate, 'EEE') AS day_name,
  day(new_saledate)   AS day,
  hour(new_saledate)  AS hour,
  CASE 
    WHEN MONTH(to_timestamp(new_saledate)) IN (1,2,3) THEN '1st quarter'
    WHEN MONTH(to_timestamp(new_saledate)) IN (4,5,6) THEN '2nd quarter'
    WHEN MONTH(to_timestamp(new_saledate)) IN (7,8,9) THEN '3rd quater'
    WHEN MONTH(to_timestamp(new_saledate)) IN (10,11,12) THEN '4th quater'
    ELSE 'Unknown'
END AS quarterly,
  CASE 
  WHEN date_format(new_saledate, 'EEE') IN ('Sat', 'Sun') THEN 'Weekend'
  ELSE 'Weekday'
END AS Weekdays_classification

From bright_motors.sales.dataset
WHERE make IS NOT NULL AND
make NOT IN ('dot','airstream','geo','daewoo') AND  model IS NOT NULL AND body IS NOT NULL
 AND transmission IN ('automatic','manual')AND vin IS NOT NULL AND state like "__" AND condition IS NOT NULL AND odometer IS NOT NULL 
AND color IN ('white','gray','black','red','silver','blue','brown','beige','purple','burgundy','gold','yellow','green','charcoal','orange','off-white','turquoise','pink','lime'
) AND interior IS NOT NULL AND interior NOT LIKE 'â%' AND mmr IS NOT NULL AND  try_to_timestamp(
        regexp_replace(saledate, '^[A-Za-z]{3} ', ''),
        'MMM dd yyyy HH:mm:ss'
      ) IS NOT NULL

Group by year,make, model, trim, body, transmission, vin, state, condition, odometer, color, interior, seller, mmr,sellingprice, saledate;

------------------

--below im creating a table for a bubble graph-to analysis the relationship between price,milleage and release year of a car
SELECT year AS Release_year,
sellingprice,
odometer
From bright_motors.sales.dataset
WHERE odometer IS NOT NULL;
