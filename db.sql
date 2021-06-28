DROP DATABASE IF EXISTS test_devFolio;
CREATE DATABASE test_devFolio;
USE test_devFolio;

# 회원 테이블 생성
CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    loginId CHAR(30) NOT NULL,
    loginPw VARCHAR(100) NOT NULL,
    `name` CHAR(30) NOT NULL,
    nickname CHAR(30) NOT NULL,
    email CHAR(100) NOT NULL,
    cellphoneNo CHAR(20) NOT NULL,
    authLevel TINYINT(1) UNSIGNED DEFAULT 3 NOT NULL COMMENT '(3=일반, 5=기업, 7=관리자)'
);

# 로그인 ID로 검색했을 때
ALTER TABLE `member` ADD UNIQUE INDEX (`loginId`);

# 회원, 테스트 데이터 생성
INSERT INTO `member`
SET regDate = NOW(),
    updateDate = NOW(),
    loginId = "test1",
    loginPw = "test1",
    `name` = "test1",
    nickname = "테스트1",
    email = "dbrudrjf21@gmail.com",
    cellphoneNo = "01012341234";

INSERT INTO `member`
SET regDate = NOW(),
    updateDate = NOW(),
    loginId = "test2",
    loginPw = "test2",
    `name` = "test2",
    nickname = "테스트2",
    email = "dbrudrjf21@gmail.com",
    cellphoneNo = "01012341234";
    
# test1 멤버 관리자로 업데이트
UPDATE `member`
SET authLevel = 7
WHERE id = 1;

# 기존회원의 비번을 암호화
UPDATE `member`
SET loginPw = SHA2(loginPw, 256);

# authKey 칼럼을 추가
ALTER TABLE `member` ADD COLUMN authKey CHAR(80) NOT NULL AFTER loginPw;

# 기존 회원의 authKey 데이터 채우기
UPDATE `member`
SET authKey = 'authKey1__1'
WHERE id = 1;

UPDATE `member`
SET authKey = 'authKey1__2'
WHERE id = 2;


# authKey 칼럼에 유니크 인덱스 추가
ALTER TABLE `test_devFolio`.`member` ADD UNIQUE INDEX (`authKey`);

# 게시물 테이블 추가
CREATE TABLE article(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    boardId INT(10) UNSIGNED NOT NULL,
    title CHAR(100) NOT NULL,
    `body` TEXT NOT NULL,
    hitCount INT(10) UNSIGNED NOT NULL
);

# 게시물 테스트 데이터 생성 
INSERT INTO article
SET regDate = NOW(),
    updateDate = NOW(),
    memberid = 1,
    boardId = 1,
    title = "제목_1",
    `body` = "내용_1";

# 게시물 테스트 데이터 랜덤 생성 (memberId 1,2 random and baordId 1,2,3 random)
/*
INSERT INTO article
(regDate, updateDate, memberId, boardId, title, `body`) 
SELECT NOW(), NOW(), FLOOR(RAND() * 2 ) + 1, ROUND(RAND() * 2) + 1,CONCAT('제목_',FLOOR(RAND() * 1000) + 1), CONCAT('내용_', FLOOR(RAND() * 1000) + 1 ) 
FROM article;

SELECT COUNT(*) FROM articl
*/


# 게시판 테이블 추가
CREATE TABLE board(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    `name` CHAR(20) NOT NULL,
    `code` CHAR(20) NOT NULL
);

# 게시판 테스트 데이터 생성 (포트폴리오, 채용공고, 커뮤니티(공지사항, 취업톡톡, 개발톡톡 , Q&A))
INSERT INTO board
SET regDate = NOW(),
    updateDate = NOW(),
    `code` = "portFolio",
    `name` = "포트폴리오";

INSERT INTO board
SET regDate = NOW(),
    updateDate = NOW(),
    `code` = "jobPosting",
    `name` = "채용공고";

INSERT INTO board
SET regDate = NOW(),
    updateDate = NOW(),
    `code` = "community",
    `name` = "공지사항";
    
INSERT INTO board
SET regDate = NOW(),
    updateDate = NOW(),
    `code` = "community",
    `name` = "취업톡톡";  
    
INSERT INTO board
SET regDate = NOW(),
    updateDate = NOW(),
    `code` = "community",
    `name` = "개발톡톡";
    
INSERT INTO board
SET regDate = NOW(),
    updateDate = NOW(),
    `code` = "community",
    `name` = "Q&A";

# 좋아요 테이블 추가  
CREATE TABLE `like`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    relTypeCode CHAR(30) NOT NULL,
    relId INT(10) UNSIGNED NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    `point` SMALLINT(1) UNSIGNED NOT NULL
);

# 좋아요 인덱스 추가
# 인덱스 : 테이블에 저장된 데이터를 빠르게 조회하기 위한 데이터베이스 객체
ALTER TABLE `like` ADD INDEX(relTypeCode, relId, memberId);

# 파일 테이블 추가
# 파일규격코드 하는 이유 : jpg, jpeg 등 정리해서 들어가는 부분, 자세한 규격이 들어가는 부분
CREATE TABLE genFile (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, # 번호
    regDate DATETIME DEFAULT NULL, # 작성날짜
    updateDate DATETIME DEFAULT NULL, # 갱신날짜
    delDate DATETIME DEFAULT NULL, # 삭제날짜
    delStatus TINYINT(1) UNSIGNED NOT NULL DEFAULT 0, # 삭제상태(0:미삭제, 1:삭제)
    relTypeCode CHAR(50) NOT NULL, # 관련 데이터 타입 ( article, memeber . . .)
    relId INT(10) UNSIGNED NOT NULL, # 관련 데이터 번호
    originFileName VARCHAR(100) NOT NULL, # 업로드 당시의 파일이름
    fileExt CHAR(10) NOT NULL, # 확장자
    typeCode CHAR(20) NOT NULL, # 종류코드(common)
    type2Code CHAR(20) NOT NULL, # 종류2코드 (attachment)
    fileSize INT(10) UNSIGNED NOT NULL, # 파일의 사이즈
    fileExtTypeCode CHAR(10) NOT NULL, # 파일규격코드 (img, video)
    fileExtType2Code CHAR(10) NOT NULL, # 파일규격2코드 (jpg, mp4)
    fileNo SMALLINT(2) UNSIGNED NOT NULL, # 파일번호 (1)
    fileDir CHAR(20) NOT NULL, # 파일이 저장되는 폴더명
    PRIMARY KEY (id),
    KEY relId (relId, relTypeCode, typeCode, type2Code, fileNo)
);