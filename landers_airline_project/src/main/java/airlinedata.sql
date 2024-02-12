
create schema airlinedata;

use airline;
select * from seat;
-- user 테이블에 더미 데이터 삽입
INSERT INTO user (user_id, user_pw, user_name, user_phone, user_address)
VALUES
    ('abc', '123', '관리자', '01011111111', '서울시 강남구'),
    ('user1', 'password1', '홍길동', '01012345678', '서울시 강남구'),
    ('user2', 'password2', '김영희', '01056781234', '서울시 서초구'),
    ('user3', 'password3', '이철수', '01078901234', '서울시 마포구'),
    ('qqq', 'password3', '홍길동', '01033333333', '서울시 마포구'),
    ('aaa', 'password3', '이철수', '01022222222', '서울시 마포구'),
    ('bbb', 'password3', '이철수', '01033331414', '서울시 마포구');

-- flight_info 테이블에 더미 데이터 삽입
INSERT INTO flight_info (flight_name, departure_airport, arrival_airport, departure_date, arrival_date, price)
VALUES
    ('SSG03', '인천', '제주', '202402051614', '202402060930', 90000),
    ('SSG03', '김포', '김해', '202402102030', '202402111200', 90000),
    ('SSG03', '김해', '인천', '202402152345', '202402160500', 80000);

-- seat 테이블에 더미 데이터 삽입	(seat_price 3: 퍼스트, 2: 비즈니스, 1: 이코노미)
INSERT INTO seat (flight_id, seat_name, seat_price, is_available)
VALUES
    (1, 'A1', 3, 1),
    (1, 'A2', 3, 1),
    (1, 'A3', 3, 1),
    (1, 'A4', 3, 1),
    (1, 'B1', 2, 1),
    (1, 'B2', 2, 1),
    (1, 'B3', 2, 1),
    (1, 'B4', 2, 1),
    (1, 'C1', 1, 1),
    (1, 'C2', 1, 1),
    (1, 'C3', 1, 1),
    (1, 'C4', 1, 1),
    (1, 'C5', 1, 1),
    (1, 'C6', 1, 1),
    (1, 'C7', 1, 1),
    (1, 'C8', 1, 1),
    (1, 'C9', 1, 1),
    (1, 'C10', 1, 1),
    (1, 'C11', 1, 1),
    (1, 'C12', 1, 1),
    
    (2, 'A1', 3, 1),
    (2, 'A2', 3, 1),
    (2, 'A3', 3, 1),
    (2, 'A4', 3, 1),
    (2, 'B1', 2, 1),
    (2, 'B2', 2, 1),
    (2, 'B3', 2, 1),
    (2, 'B4', 2, 1),
    (2, 'C1', 1, 1),
    (2, 'C2', 1, 1),
    (2, 'C3', 1, 1),
    (2, 'C4', 1, 1),
    (2, 'C5', 1, 1),
    (2, 'C6', 1, 1),
    (2, 'C7', 1, 1),
    (2, 'C8', 1, 1),
    (2, 'C9', 1, 1),
    (2, 'C10', 1, 1),
    (2, 'C11', 1, 1),
    (2, 'C12', 1, 1),
    
    (3, 'A1', 3, 1),
    (3, 'A2', 3, 1),
    (3, 'A3', 3, 1),
    (3, 'A4', 3, 1),
    (3, 'B1', 2, 1),
    (3, 'B2', 2, 1),
    (3, 'B3', 2, 1),
    (3, 'B4', 2, 1),
    (3, 'C1', 1, 1),
    (3, 'C2', 1, 1),
    (3, 'C3', 1, 1),
    (3, 'C4', 1, 1),
    (3, 'C5', 1, 1),
    (3, 'C6', 1, 1),
    (3, 'C7', 1, 1),
    (3, 'C8', 1, 1),
    (3, 'C9', 1, 1),
    (3, 'C10', 1, 1),
    (3, 'C11', 1, 1),
    (3, 'C12', 1, 1);
    
-- schedule 테이블에 더미 데이터 삽입
INSERT INTO schedule (departure_airport, arrival_airport, departure_date, person_num)
VALUES 
    ('인천', '제주', '202402101430', 1),
    ('김포', '김해', '202402151000', 2),
    ('김해', '인천', '202402201845', 3),
    ('김해', '제주', '202402201845', 4),
    ('김해', '제주', '202402201845', 5),
    ('김해', '인천', '202402201845', 6),
    ('김해', '인천', '202402201845', 7),
    ('김해', '인천', '202402201845', 8),
    ('김해', '도쿄', '202402201845', 9);
    
    
    
   -- 여러 개의 티켓 더미 데이터 추가
-- 티켓 1
INSERT INTO ticket (user_id, schedule_id, final_price, final_date, flight_id, seat_id)
VALUES ('abc', 1, 50000, '2024-02-10 14:30:00', 1, 1),
       ('user1', 1, 60000, '2024-02-15 10:00:00', 2, 2),
       ('user2', 1, 75000, '2024-02-20 18:45:00', 1, 3);

-- 티켓 2
INSERT INTO ticket (user_id, schedule_id, final_price, final_date, flight_id, seat_id)
VALUES ('user1', 2, 55000, '2024-02-12 15:30:00', 1, 5),
       ('user2', 2, 70000, '2024-02-17 11:30:00', 2, 7),
       ('user3', 2, 80000, '2024-02-22 20:15:00', 1, 9),
		('user3', 2, 90000, '2024-03-22 20:15:00', 1, 15),
        ('user3', 2, 150000, '2024-03-22 20:15:00', 1, 17),
        ('user3', 2, 200000, '2024-03-22 20:15:00', 1, 19),
        ('user3', 2, 350000, '2024-03-22 20:15:00', 1, 20),
        ('user3', 2, 500000, '2024-03-22 20:15:00', 1, 21),
        ('user3', 2, 150000, '2024-04-22 20:15:00', 1, 22),
        ('user3', 2, 80000, '2024-04-22 20:15:00', 1, 23),
        ('user3', 2, 990000, '2024-05-22 20:15:00', 1, 24);
-- 티켓 3
INSERT INTO ticket (user_id, schedule_id, final_price, final_date, flight_id, seat_id)
VALUES ('user1', 3, 60000, '2024-02-14 16:45:00', 1, 13),
       ('user2', 3, 72000, '2024-02-19 14:00:00', 2, 16),
       ('user3', 3, 85000, '2024-02-24 22:30:00', 1, 18);
       
             -- 환불리스트
 INSERT INTO refund (user_id, ticket_id, content, refund_status)
VALUES
	( 'user1',8, '단순변심', '대기' ),
	( 'user2',9, '다른여행일정', '대기' );
    
    
    
    INSERT INTO qna (id, ref, step, depth, title, content, wdate, del, readcount, category)
VALUES
  ('user1', 1, 0, 0, '첫 번째 질문', '첫 번째 질문의 내용입니다.',now(), 0, 10, '칭찬'),
  ('user2', 2, 0, 0, '두 번째 질문', '두 번째 질문의 내용입니다.', now(), 0, 15, '칭찬'),
  ('user3', 3, 0, 0, '세 번째 질문', '세 번째 질문의 내용입니다.', now(), 0, 8, '문의'),
  ('user4', 4, 0, 0, '네 번째 질문', '네 번째 질문의 내용입니다.',now(), 0, 20, '문의'),
  ('user5', 5, 0, 0, '다섯 번째 질문', '다섯 번째 질문의 내용입니다.', now(), 0, 12, '불만'),
  ('user6', 6, 0, 0, '여섯 번째 질문', '여섯 번째 질문의 내용입니다.', now(), 0, 18, '불만'),
  ('user7', 7, 0, 0, '일곱 번째 질문', '일곱 번째 질문의 내용입니다.', now(), 0, 14, '불만'),
  ('user8', 8, 0, 0, '여덟 번째 질문', '여덟 번째 질문의 내용입니다.',now(), 0, 22, '칭찬'),
  ('user9', 9, 0, 0, '아홉 번째 질문', '아홉 번째 질문의 내용입니다.',now(), 0, 25, '문의'),
  ('user10', 10, 0, 0, '열 번째 질문', '열 번째 질문의 내용입니다.',now(), 0, 16, '불만'),
('user10', 10, 0, 0, '열 번째 질문', '열 번째 질문의 내용입니다.',now(), 0, 16, '불만');