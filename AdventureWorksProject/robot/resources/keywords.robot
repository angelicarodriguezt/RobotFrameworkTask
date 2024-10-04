*** Settings ***
Library           DatabaseLibrary
Library           OperatingSystem
*** Keywords ***
Verify Row Count is Equal to 4
    Row Count Is Equal To X      SELECT * FROM person.address WHERE city = 'Salt Lake City';    4
Check If Exists In DB - 1226 Shoe St.
    Check If Exists In Database    SELECT AddressID FROM person.address WHERE AddressLine1 = '1226 Shoe St.';
Verify Row Count is 0
    Row Count is 0    SELECT * FROM Production.Document WHERE DocumentLevel NOT IN (0,1,2 );
Verify Row Count is Equal to 1
    Row Count Is Equal To X      SELECT Title FROM Production.Document WHERE Title = 'Lubrication Maintenance';    1
Check If Not Exists in DB - Fahrenheit
    Check If Not Exists In Database    SELECT * FROM Production.UnitMeasure WHERE Name = 'Fahrenheit';
Check if table exists - UnitMeasure
     Table Must Exist    UnitMeasure