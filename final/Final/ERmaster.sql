
/* Drop Tables */

DROP TABLE TripPlan CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE TripPlan
(
	-- planId。
	-- 主キー
	-- 5桁で登録
	Plan_id number(5) NOT NULL,
	-- 旅行名
	-- 100文字以内
	Plan_name nvarchar2(100) NOT NULL UNIQUE,
	Country nvarchar2(50) NOT NULL,
	-- 旅行日数
	-- 出発日から帰宅日まで
	days number NOT NULL,
	-- 朝食の有無
	-- あるなら１
	-- ないなら０
	-- 
	morning number NOT NULL,
	-- 送迎の有無
	-- あるなら１
	-- ないなら０
	-- 
	pickup number NOT NULL,
	PRIMARY KEY (Plan_id)
);



/* Comments */

COMMENT ON COLUMN TripPlan.Plan_id IS 'planId。
主キー
5桁で登録';
COMMENT ON COLUMN TripPlan.Plan_name IS '旅行名
100文字以内';
COMMENT ON COLUMN TripPlan.days IS '旅行日数
出発日から帰宅日まで';
COMMENT ON COLUMN TripPlan.morning IS '朝食の有無
あるなら１
ないなら０
';
COMMENT ON COLUMN TripPlan.pickup IS '送迎の有無
あるなら１
ないなら０
';



