-- SQL Server EMONTH sample -- 

-- built-in SQL function provides the last day of the month based on specified
-- input date 

use sqltraining;

select EOMONTH('2022-09-15') end_of_month_sep22;

-- passing a date with a month represents leap year -- 

select EOMONTH('2020-02-10') end_of_month_feb20;

-- to get the number of days in a specified month 

select DAY(EOMONTH('2020-02-10')) DAYS;

