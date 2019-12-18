

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
	(TRAINEEID, 	  `NAME`, 	AGE, 			  BRITH, ET_GMATH, ET_ENGLISH, ET_IQ, CLASS)
VALUES	
	(		1, 		 'NORTH',  	20, 		 '1999-1-1', 		9, 	  	   9,   150,     1),
    (		2, 	  	 'SOUTH', 	20, 		 '1111-1-1', 		9, 		   9, 	150, 	 1),
	(		3, 		  'WEST', 	20, 		 '1111-1-1', 		9, 		   9, 	150, 	 1),
	(		4, 		  'EAST', 	20, 		 '1111-1-1', 		9, 		   9, 	150, 	 1),
	(		5, 	'NORTH-EAST', 	20, 		 '1199-4-2', 		9, 		   9,   150,  	 1),
    (		6, 	'NORTH-WEST', 	20, 		 '1300-3-2', 		9, 		   9, 	150, 	 1),
	(		7, 	'SOUTH-EAST', 	20, 		 '1212-4-5', 		9, 		   9, 	150, 	 1),
	(		8, 	'SOUTH-WEST', 	20, 		 '1999-4-5', 		9, 		   9, 	150, 	 1),
	(		9, 		'MIDDLE', 	20, 		 '1660-4-6', 		9, 		   9, 	150, 	 1),
	(	   10, 	   'NOWHERE', 	20, 		 '1400-5-7', 		9, 		   9, 	150, 	 1);


SELECT TRAINEEID +' : '+`NAME`
FROM THUCTAP
WHERE ET_GMATH>=8 AND ET_ENGLISH>=8
ORDER BY BRITH DESC;

SELECT TRAINEEID+' : '+`NAME`
FROM THUCTAP
WHERE MAX(LENGTH(`NAME`));

SELECT TRAINEEID+' : '+`NAME` AS `NAME`
FROM THUCTAP
WHERE ET_IQ>=150 AND ET_GMATH>=8 AND ET_ENGLISH>=8 AND ET_IQ+ET_GMATH>=18;  

DELETE FROM THUCTAP
WHERE TRAINEEID=3;

UPDATE THUCTAP SET CLASS = 2
WHERE TRAINEEID = 5 ;

 


