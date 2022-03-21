/*
	MISSION (1)
    '포켓몬'(pokemon) 데이터베이스와 '나의 포켓몬'(myPokemon) 테이블을 만들고 피카츄, 이브이, 케터피의 포켓몬 번호, 영문 이름, 타입 데이터를 넣기
	
    쿼리 순서
	STEP1. 포켓몬 데이터베이스 만들기 
	STEP2. 포켓몬 데이터베이스 안에 나의 포켓몬 테이블 만들기, 이 때 컬럼은 (1) 포켓몬 번호 (2)포켓몬 영문 이름 (3) 포켓몬 타입 총 3가지로 하고 이름과 데이터타입을 지정하기
    STEP3. 포켓몬 테이블 안에 포켓몬 데이터를 각각의 로우로 삽입하기
*/

CREATE DATABASE pokemon;

# 1) USE
USE pokemon;
CREATE TABLE myPokemon (
			number INT,
            name VARCHAR(20),
            type VARCHAR(20)
            );

# 2) USER 사용 x
CREATE TABLE pokemon.myPokemon (
			number INT,
            name VARCHAR(20),
            type VARCHAR(20)
            );

INSERT INTO mypokemon (number, name, type)
VALUES  (10, 'caterpie', 'bug'),
		(25, 'pikachu', 'electric'),
		(133, 'eevee', 'normal');

SELECT * FROM mypokemon; -- 테이블 전체를 조회하는 쿼리

/*
	MISSION (2)
    MISSION (1) 에서 만든 '포켓몬' 데이터베이스에
    '나의 새로운 포켓몬' 테이블을 만들고
    포니타 메타몽 뮤의 포켓몬 번호 이름 타입 데이터를 넣어주세요
*/

USE pokemon;
CREATE TABLE mynewpokemon(
				number INT,
                name VARCHAR(20),
                type VARCHAR(10)
                );
			
INSERT INTO mynewpokemon (number, name, type)
VALUES  (77, "포니타", "불꽃"),
		(132, "메타몽", "노말"),
        (151, "뮤", "에스퍼");


SELECT * FROM mynewpokemon; -- 테이블 전체를 조회하는 쿼리

-- 테이블 내 데이터 변경하기


ALTER TABLE mypokemon
RENAME myoldpokemon;
SELECT * FROM myoldpokemon;

ALTER TABLE myoldpokemon
CHANGE COLUMN name eng_name VARCHAR(20);

ALTER TABLE mynewpokemon
CHANGE COLUMN name kor_name VARCHAR(20);
SELECT * FROM mynewpokemon;


-- 테이블 내 데이터 지우기


USE pokemon;
TRUNCATE TABLE myoldpokemon;
SELECT * FROM myoldpokemon;

DROP TABLE mynewpokemon;
SELECT * FROM mynewpokemon;

DROP DATABASE pokemon;




