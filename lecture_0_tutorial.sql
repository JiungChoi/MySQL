# 주석
-- 또 다른 주석
/* 줄 주석 */

# 모든 데이터베이스 목록 보기
SHOW DATABASES;
# 데이터베이스 만들기
CREATE DATABASE myDataBase;
# 사용할 데이터베이스 지정하기
USE myDataBase;
# 테이블 만들기
CREATE TABLE myTable(
	col1 INT,
    col2 CHAR(2)
);
# 테이블에 데이터 삽입하기
INSERT INTO myTable (col1, col2)
VALUE (1, 'a'), (2, 'b'), (3, 'c'), (4, 'd'), (5, 'e');
# 모든 데이터 가져오기
SELECT * FROM myTable;