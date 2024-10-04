*** Settings ***
Library           DatabaseLibrary
Resource   ../resources/variables.robot
Resource   ../resources/keywords.robot
Suite Setup       Connect To Database     pyodbc  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown    Disconnect From Database

*** Test Cases ***
Verify the count of records in Address table where city is Salt Lake City
    [Documentation]
    ...  | *Setup:*
    ...  | 0. Connect to DB AdventureWorks2012
    ...  |
    ...  | *Test Steps:*
    ...  | 1. Query table [Person].[Address] and filter by city Salt Lake City
    ...  |
    ...  | *Expected result:*
    ...  | 0. Four records were returned after running the query
    Verify Row Count is Equal to 4


Verify that the address '1226 Shoe St.' exists in Address table
    [Documentation]
    ...  | *Setup:*
    ...  | 0. Connect to DB AdventureWorks2012
    ...  |
    ...  | *Test Steps:*
    ...  | 1. Query table [Person].[Address] and filter by address 1226 Shoe St.
    ...  |
    ...  | *Expected result:*
    ...  | 0. At least one record is returned by the query
    Check If Exists In DB - 1226 Shoe St.

Verify that there are not Document levels different to 0,1 or 2 in Document table
    [Documentation]
    ...  | *Setup:*
    ...  | 0. Connect to DB AdventureWorks2012
    ...  |
    ...  | *Test Steps:*
    ...  | 1. Query table [Production].[Document] and filter by DocumentLevel not in 0, 1 or 2
    ...  |
    ...  | *Expected result:*
    ...  | 0. Row count is 0
    Verify Row Count is 0

Verify that there is a document called Lubrication Maintenance in table Document
    [Documentation]
    ...  | *Setup:*
    ...  | 0. Connect to DB AdventureWorks2012
    ...  |
    ...  | *Test Steps:*
    ...  | 1. Query table [Production].[Document] and filter by Title 'Lubrication Maintenance'
    ...  |
    ...  | *Expected result:*
    ...  | 0. One row is returned
    Verify Row Count is Equal to 1
Verify that the table 'UnitMeasure' exists
    [Documentation]
    ...  | *Setup:*
    ...  | 0. Connect to DB AdventureWorks2012
    ...  |
    ...  | *Test Steps:*
    ...  | 1. Check if inside the database there is a table called 'UnitMeasure'
    ...  |
    ...  | *Expected result:*
    ...  | 0. UnitMeasure table exists
    Check if table exists - UnitMeasure
Verify that 'Fahrenheit' does not exist in UnitMeasure table
    [Documentation]
    ...  | *Setup:*
    ...  | 0. Connect to DB AdventureWorks2012
    ...  |
    ...  | *Test Steps:*
    ...  | 1. Query table [Production].[UnitMeasure] and filter by Name 'Fahrenheit'
    ...  |
    ...  | *Expected result:*
    ...  | 0. No records are returned
    Check If Not Exists In DB - Fahrenheit
