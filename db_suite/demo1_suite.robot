*** Comments ***
Table name - Products
Columns-product_id,productname,description

*** Settings ***
Library  DatabaseLibrary
Suite Setup     Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db
...     dbPassword=12345678     dbHost=db4free.net  dbPort=3306

Suite Teardown   Disconnect From Database


*** Test Cases ***
TC1
   Table Must Exist    Products
   ${count}  Row Count    select * from Products
   Log To Console    ${count}
 TC2
    Execute Sql String    insert into Products (product_id,productname,description) values (720,"sam","B-tech")
    Row Count Is Equal To X    select * from Products where Product_id=720   1
TC3
    Row Count Is Equal To X    select * from Products where Product_id=10    1






