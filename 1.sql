
--1:
USE THUCTAPSINH;

CREATE TABLE IF NOT EXISTS THUCTAP
(
    TRAINEEID         TINYINT        NOT NULL   UNIQUE,
    `NAME`            NVARCHAR(50)   NOT NULL,
    AGE               TINYINT        NOT NULL,
    BRITH             DATETIME       NOT NULL,
    ET_GMATH          TINYINT        NOT NULL,
    ET_ENGLISH        TINYINT        NOT NULL,
    ET_IQ             SMALLINT       NOT NULL,
    CLASS             CHAR(1)        NOT NULL,
    PRIMARY KEY (TRAINEEID)
);

INSERT INTO THUCTAP 
	(       TRAINEEID, 	            `NAME`,    AGE, 	              BRITH,     ET_GMATH,        ET_ENGLISH, ET_IQ, CLASS)
VALUES	
	(		1, 		   'NORTH',  	20, 		 '1999-1-1', 		8, 	  	  10,   140,     1),
        (		2, 	  	   'SOUTH', 	20, 		 '1111-1-1', 		7, 		   6, 	130, 	 1),
	(		3, 		    'WEST', 	20, 		 '1111-1-1', 		9, 		   9, 	120, 	 1),
	(		4, 		    'EAST', 	20, 		 '1111-1-1', 		9, 		   9, 	110, 	 1),
	(		5, 	      'NORTH-EAST', 	20, 		 '1199-4-2', 		9, 		   9,   150,  	 1),
        (		6, 	      'NORTH-WEST', 	20, 		 '1300-3-2', 		9, 		   9, 	150, 	 1),
	(		7, 	      'SOUTH-EAST', 	20, 		 '1212-4-5', 		9, 		   9, 	150, 	 1),
	(		8, 	      'SOUTH-WEST', 	20, 		 '1999-4-5', 		9, 		   9, 	150, 	 1),
	(		9, 		  'MIDDLE', 	20, 		 '1660-4-6', 		9, 		   9, 	150, 	 1),
	(	       10, 	         'NOWHERE', 	20, 		 '1400-5-7', 		9, 		   9, 	150, 	 1);

--2:
SELECT TRAINEEID +' : '+`NAME` AS `NAME1`
FROM THUCTAP
WHERE ET_GMATH>=8 AND ET_ENGLISH>=8
ORDER BY BRITH DESC;

--NEED FIX

--3:
SELECT TRAINEEID+' : '+`NAME`
FROM THUCTAP
WHERE MAX(LENGTH(`NAME`));

--SELECT CONCAT() `NAME`
--FROM THUCTAP
--WHERE LENGTH(`NAME`)=(SELECT MAX(LENGTH(`NAME`))FROM TRANIEE);
  

--NEED FIX

--4:
SELECT TRAINEEID+' : '+`NAME` AS `NAME`
FROM THUCTAP
WHERE ET_IQ>=150 AND ET_GMATH>=8 AND ET_ENGLISH>=8 AND ET_IQ+ET_GMATH>=18;  

--5:
DELETE FROM THUCTAP
WHERE TRAINEEID=3;

--6:
UPDATE THUCTAP SET CLASS = 2
WHERE TRAINEEID = 5 ;

 


