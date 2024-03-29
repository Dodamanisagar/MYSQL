/* 
* Stored Procedures:-
	--  A stored procedure is a set of SQL statements that can be stored in the database and executed later.  
	--  It helps to encapsulate a sequence of SQL statements into a reusable and modular structure.

 
* Syntax:-
           DELIMITER //   
           CREATE PROCEDURE procedure_name (
                    IN/OUT/INOUT parameter1 datatype, 
                    IN/OUT/INOUT parameter2 datatype, ...)
           BEGIN
                SQL statements...;
           END //
           DELIMITER ;
    
* Explaination:-
1. DELIMITER // --> It changes the default statement delimiter ";" to "//" to allow 
					the definition of multiple SQL statements within the procedure.
2. CREATE PROCEDURE:--> This is used to create a new stored procedure.
3. procedure_name:-->The name of the stored procedure.
4. (IN parameter1 datatype, IN parameter2 datatype, ...):--> Input parameters for the stored procedure.
5. BEGIN ... END:--> The block containing SQL statements to be executed.
6. DELIMITER ;:--> Resets the statement delimiter back to ";".

    
* Parameters in Stored Procedures:-
1. IN parameters:-
--> IN is the default mode.
--> When defining an IN parameter in a stored procedure, 
	the calling program must pass an argument to the stored procedure.
--> if we dont pass an argument then we will get 
	"Error Code: 1318. Incorrect number of arguments for PROCEDURE mysql_tutorial.GetEmployeeById; 
    expected 1, got 0"
--> stored procedure works only on the copy of the IN parameter. 
    Meaning unlike OUT parameter it can't be modified within the stored procedure.
       
2. OUT parameters:-
--> The value of an OUT parameter can be modified within the stored procedure, 
	and its updated value is then passed back to the calling program.
--> Note that stored procedures cannot access the initial value of the OUT parameter when they begin.
       
3. INOUT parameters:-
--> An INOUT  parameter is a combination of IN and OUT parameters.
--> This means that the calling program may pass the argument, 
	and the stored procedure can modify the INOUT parameter and pass the new value back to the calling program.



* Advantages:-
1. Reduce network traffic:-
--> Stored procedures help reduce the network traffic between applications and MySQL servers
--> Instead of sending multiple lengthy SQL statements, 
	applications only need to send the name and parameters of the stored procedures.

2. Centralize business logic in the database:-
--> You can use stored procedures to implement reusable business logic across multiple applications.
--> They streamline the process, reducing the need to duplicate the same 
	logic in multiple applications and contributing a more consistent database.

3. Make the database more secure:-
--> You can grant specific privileges to applications, allowing access to 
	particular stored procedures without providing any privileges to the underlying tables.


* DisAdvantages:-
1. Resource usage:-
-->  If you use many stored procedures, the memory usage of every connection will significantly increase.
-->  Additionally, an excessive use of logical operations in the stored procedures can 
	 lead to increased CPU usage, as MySQL is not well-designed for such operations.

2. Troubleshooting:-
-->  Debugging stored procedures is quite challenging.
-->  MySQL lacks facilities for debugging stored procedures, 
	 a feature available in other enterprise database products such as Oracle Database and SQL Server.

3. Maintenances:-
-->  Developing and maintaining stored procedures often demands a specialized skill set 
	 not universally possessed by all application developers. 
-->  Potentially causing issues in both application development and maintenance.

*/