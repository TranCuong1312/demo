DROP DATABASE IF EXISTS THUCTAP;
CREATE DATABASE IF NOT EXISTS THUCTAP;

USE THUCTAP;


CREATE TABLE IF NOT EXISTS THUCTAPSINH
(
     TRAINEEID    CHAR(2)      NOT NULL   AUTO_INCREMENT,
     `NAME`       VARCHAR(30)  NOT NULL,
     AGE          TINYINT      NOT NULL,
     BRITH        DATETIME     NOT NULL,
     ET_MATH      TINYINT      NOT NULL,
     ET_ENGLISH   TINYINT      NOT NULL,
     ET_IQ        SMALLINT     NOT NULL,
     CLASS        CHAR(1)      NOT NULL,
     LENGTHNAME   TINYINT      NOT NULL,
     PRIMARY KEY (TRAINEEID)
 );   
 
 INSERT INTO THUCTAPSINH
        (TRAINEEID,          `NAME`,  AGE,        BRITH, ET_MATH, ET_ENGLISH, ET_IQ, CLASS)
 VALUES
        (       1,          'NORHT',   20, '1999-12-13',     8.5,          9,   150,     1),
        (	    2,			'SOUTH',   20,	 '1999-1-1',       9,		   5,	140,	 1),
        (		3,			 'WEST',   20,  '1999-5-13',  	   7,		  10, 	150, 	 1),
        (		4,			 'EAST',   20,  '1999-4-14',       6,          9,   145,     2),
        (		5,	  ' NORTH-EAST',   54, '1212-12-12',     7.8,          2,   135,     3),
        (		6, 	   'NORTH-WEST',   20,   '1300-3-2', 	   9, 		   9, 	150, 	 1),
	    (		7, 	   'SOUTH-EAST',   20, 	 '1220-4-5', 	   9, 		   9, 	150, 	 1),
	    (		8, 	   'SOUTH-WEST',   20, 	 '1400-5-4', 	   9, 		   9, 	150, 	 1),
	    (		9, 		   'MIDDLE',   40, 	 '1323-5-2', 	   9, 		   9, 	150, 	 1),
	    (	   10, 	      'NOWHERE',   20, '1914-11-18', 	   9, 		   9, 	150, 	 1);
        
/*2:*/
        
SELECT CONCAT_WS(TRAINEEID,':',`NAME`) AS PASS
FROM THUCTAPSINH
WHERE ET_MATH>=8 AND ET_ENGLISH>=8
ORDER BY BRITH DESC;

/*3*/

SELECT CONCAT_WS(TRAINEEID, ':', `NAME`), CHAR_LENGTH(`NAME`) AS LENGTHOFNAME
FROM THUCTAPSINH;

SELECT MAX(LENGTHOFNAME) AS MAXLENGTH
FROM THUCTAPSINH;

/* INSERT INTO THUCTAPSINH [LENGTHNAME]
   SELECT CHAR_LENGTH(`NAME`) AS LENGTHNAME
   FROM THUCTAPSINH;
   
   SELECT MAX(LENGTHNAME) AS LENGTHOFNAME
   FROM THUCTAPSINH */

/*4*/

SELECT CONCAT_WS(TRAINEEID,':', `NAME`) AS GOODENOUGH
FROM THUCTAPSINH
WHERE ET_IQ>=150 AND ET_MATH>=8 AND ET_ENGLISH>=8 AND ET_MATH + ET_MATH>=18;

/*5*/

DELETE FROM THUCTAPSINH
WHERE TRAINEEID=3;

/*6*/

UPDATE THUCTAPSINH SET CLASS =2
WHERE TRAINEEID=5;




