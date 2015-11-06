--Ramanpreet Kaur Shergill
--7282353
--Assignment 1

Print 'Ramanpreet Kaur Shergill
7282353
Assignment 1'
Print ''

--Problem 1
--List all data from the AcademicStatus table
PRINT 'List all data from the AcademicStatus table'
Select * FROM AcademicStatus

--Problem 2
--List number and academicStatusCode for all students who have been discontinued. List the results in descending order by number
Print 'List number and academicStatusCode for all students who have been discontinued. List the results in descending order by number'
Select number, AcademicStatusCode FROM Student Where AcademicStatusCode LIKE 'D' ORDER BY number DESC

--Program 3
--List number and academicStatusCode for all students who have been discontinued or suspended. List the results in ascending order by number. Use OR. Do not use NOT or !=
Print 'List number and academicStatusCode for all students who have been discontinued or suspended. List the results in ascending order by number. Use OR. Do not use NOT or !='
Select number, AcademicStatusCode FROM Student Where academicStatusCode LIKE 'D' OR AcademicStatusCode LIKE 'S' ORDER BY number ASC

--Program 4
--List number and academicStatusCode for all students who have been discontinued or suspended. List the results in ascending order by number. Use NOT. Do not use OR or !=
Print 'List number and academicStatusCode for all students who have been discontinued or suspended. List the results in ascending order by number. Use NOT. Do not use OR or !='
Select number, AcademicStatusCode FROM Student Where NOT academicStatusCode LIKE 'N' ORDER BY number ASC

--Prrogram 5
--List number and academicStatusCode for all students who have been discontinued or suspended. List the results in ascending order by number. Use !=. Do not use OR or NOT
Print 'List number and academicStatusCode for all students who have been discontinued or suspended. List the results in ascending order by number. Use !=. Do not use OR or NOT'
Select number, AcademicStatusCode FROM Student Where academicStatusCode != 'N' ORDER BY number ASC

--Program 6
--List the countries persons are from, but show each country code only once
Print 'List the countries persons are from, but show each country code only once'
Select DISTINCT countryCode FROM Person

--Program 7
--College management would like to see the new values that will result if all incidental fees are increased by 10%. Show item aliased as ‘Incidental Fee Item’
--Show amountPerSemester aliased as ‘Current Fee’
--Use an expression to calculate the increased fee and alias the output as ‘Increased Fee’. Order the results in ascending order by item
Print 'College management would like to see the new values that will result if all incidental fees are increased by 10%
Show item aliased as ‘Incidental Fee Item’. Show amountPerSemester aliased as ‘Current Fee’. Use an expression to calculate the increased fee and alias the output as ‘Increased Fee’
Order the results in ascending order by item'
Select item 'Incidental Fee Item', amountPerSemester 'Current Fee', (amountPerSemester*10/100)+amountPerSemester 'Increased Fee' FROM IncidentalFee ORDER BY item ASC

--Program 8
--List all data for students with finalmark less than (but not equal to) 55 and greater than 0
Print 'List all data for students with finalmark less than (but not equal to) 55 and greater than 0'
Select * FROM CourseStudent WHERE finalMark>0 AND finalMark<55

--Program 9
--List the number of any room that has a capacity greater than or equal to 40, is a lab, has computers with 4GB memory, and is located at the Doon campus
Print 'List the number of any room that has a capacity greater than or equal to 40, is a lab, has computers with 4GB memory, and is located at the Doon campus'
Select number FROM Room WHERE capacity >=40 AND memory='4GB' AND campusCode='D'

--Program 10
--List all employees who teach in the School of Trades and Apprenticeship and are located at the Doon, Guelph or Waterloo campus
Print 'List all employees who teach in the School of Trades and Apprenticeship and are located at the Doon, Guelph or Waterloo campus'
Select * From Employee Where schoolCode Like 'TAP' AND campusCode IN('D','G','W')
