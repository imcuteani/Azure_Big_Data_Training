--smalldatetime
--datetime
--datetime2
--datetimeoffset
--date
--time 

-- sysdatetime() - returns the date and time of the system where sql server is running 
-- sysdatetimeoffset() - returns the date and time of the system where sql server is running + UTC offset
-- sysutcdatetime() - returns the date and time of the system where SQL server is running on as UTC 

use sqltraining

select SYSDATETIME() as 'DateAndTime'; -- return datetime2()
select SYSDATETIMEOFFSET() as 'DateAndTime+Offset' -- return datetimeoffset()
select SYSUTCDATETIME() as 'DateAndTimeUtc'; -- returns datetime2()


select CURRENT_TIMESTAMP as 'DateAndTime'; 
select GETDATE() as 'DateAndTime';
select GETUTCDATE() as 'DateAndTimeUtc';

-- DateName Function -- 

-- return a string corresponding to the datepart specified for the given date 

select DATENAME(YEAR, GETDATE()) as 'Year';
select DATENAME(QUARTER, GETDATE()) as 'Quarter';
select DATENAME(MONTH, GETDATE()) as 'Month Name';


-- DATEPART Function --- 

-- returns an integer corresponding to the datepart specified

select DATEPART(YEAR, GETDATE()) as 'YEAR';
select DATEPART(DAYOFYEAR, GETDATE()) as 'DayOfYear';
select DATEPART(DAY, GETDATE()) as 'Day';
select DATEPART(WEEK,GETDATE()) as 'Week';
select DATEPART(HOUR,GETDATE()) as 'Hour';
select DATEPART(MINUTE,GETDATE()) as 'Minute';
select DATEPART(SECOND,GETDATE()) as 'Second';

-- sql server day, month, year function 


-- datefromparts -- returns a date from the date specified 
--datetime2fromparts -- returns a datetime2 from part defined

select DATEFROMPARTS(2011,05,01) as 'Date';
select DATETIME2FROMPARTS(2011,05,03,6,0,0,0,5) as 'datetime2';
select DATETIMEFROMPARTS(2011,05,03,6,0,0,0) as 'datetime';
select DATETIMEOFFSETFROMPARTS(2019,1,1,6,0,0,0,0,0,0) as 'offset';
select TIMEFROMPARTS(16,0,0,0,0) as 'time';

-- datediff and datediff_big functions

--datediff function returns the number of date and time datepart boundaries crossed between specified dates as an int 

select DATEDIFF(DAY,2019-31-01, 2019-01-01) as 'datediff';
select DATEDIFF_BIG(DAY, 2018-31-01, 2018-01-01) as 'dateDiffbig';


-- Dateadd function 
select DATEADD(DAY, 1, GETDATE()) as 'DatePlus';
select EOMONTH(GETDATE(),1) as 'LastDayOfMonth';
select SWITCHOFFSET(GETDATE(), -6) as 'datetimezoneoffset';
select TODATETIMEOFFSET(GETDATE(), -2) as 'Offset'; -- returns datetimeoffset



select ISDATE(GETDATE()) as 'IsDate';
select ISDATE(NULL) as 'IsDate';
