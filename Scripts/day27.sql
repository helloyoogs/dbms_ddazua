--ROLE : 권한이 뭉쳐 있는(모여 있는) 상태
-- CONNECT, RESOURCE, DBA
-- GRANT 권한명(ROLE이름), 권한명2,.. TO 계정명
-- REVOKE 권한명(ROLE이름) FROM 계정명

--A라는 계정의 테이블에 DML을 사용하기 위해서는 A계정에게 권한을 부여받아야 한다.

CREATE TABLE COPY_PLAYER AS SELECT * FROM HR.PLAYER;
SELECT * FROM COPY_PLAYER CP JOIN HR.TEAM T
ON 	CP.TEAM_ID = T.TEAM_ID;
--SCOTT 테이블에서 SALGRADE를 복사한 후 GRADE 컬럼명을 LEVEL로 변경, 값을 반대로 바꾸기
-- 5 -> 1
-- 4 -> 2
-- ...
-- 1 -> 5
CREATE TABLE SALGRADE AS SELECT * FROM SCOTT.SALGRADE;
SELECT * FROM SALGRADE;
ALTER TABLE SALGRADE RENAME COLUMN GRADE TO "LEVEL";
-- 5 4 3 2 1
-- 1 2 3 4 5
UPDATE SALGRADE 
SET "LEVEL" = 6 - "LEVEL";








