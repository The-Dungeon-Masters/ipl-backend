INSERT INTO ipl.user_types(user_type)	VALUES ('Admin');
INSERT INTO ipl.user_types(user_type)	VALUES ('User');

INSERT INTO ipl.users(user_id, user_name, password, email, points, user_type, created_by)
VALUES (1, 'superadmin', '$2a$12$WL4PaL.sc7TCKkgmfZZAb.icigUwffy/tf352Iq9DDI5y83XLMSV.','superadmin@ipl', 0, 'Admin', 'Default'),
(2, 'superman', '$2a$12$WL4PaL.sc7TCKkgmfZZAb.icigUwffy/tf352Iq9DDI5y83XLMSV.','superman@ipl.com', 0, 'User', 'Default');

--INSERT INTO ipl.contest(id, points, type)	VALUES (1, 0, 'lunch');
INSERT INTO ipl.contest(id, points, type)	VALUES (2, 20, '20 Points');
--INSERT INTO ipl.contest(id, points, type)	VALUES (3, 50, '50 Points');

INSERT INTO ipl.user_recharge(user_id, recharge_points, recharged_by, comments, recharge_time) VALUES
(2, 200, 1, 'initial points', NOW());

INSERT INTO ipl.contest_users(id, contest_id, user_id)
VALUES (1, 1, 2),(2, 2, 2),(3, 3, 2);

INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (1, 'MI', 'MUMBAI INDIANS');
INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (2, 'KKR', 'KOLKATA KNIGHT RIDERS');
INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (3, 'DC', 'DELHI CAPITALS');
INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (4, 'CSK', 'CHENNAI SUPER KINGS');
INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (5, 'PBKS', 'PUNJAB KINGS');
INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (6, 'RR', 'RAJASTHAN ROYALS');
INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (7, 'RCB', 'ROYAL CHALLENGERS BANGALORE');
INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (8, 'SRH', 'SUNRISERS HYDERABAD');
INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (9, 'GT', 'GUJRAT TITANS');
INSERT INTO ipl.teams(team_id, team_name, team_full_name)	VALUES (10, 'LSG', 'LUCKNOW SUPER GIANTS');

insert into ipl.matches (match_id, team_one_id, team_two_id, status, start_time, venue) values 
('1', '1', '4', NULL, '2018-04-07 20:00:00'	, 'Wankhede Stadium, Mumbai '),
('2', '3', '5', NULL, '2018-04-08 16:00:00'	, 'Punjab Cricket Association IS Bindra Stadium, Mohali, Chandigarh '),
('3', '2', '7', NULL, '2018-04-08 20:00:00'	, 'Eden Gardens, Kolkata '),
('4', '8', '6', NULL, '2018-04-09 20:00:00'	, 'Rajiv Gandhi International Stadium, Uppal, Hyderabad '),
('5', '4', '2', NULL, '2018-04-10 20:00:00'	, 'MA Chidambaram Stadium, Chepauk, Chennai '),
('6', '6', '3', NULL, '2018-04-11 20:00:00'	, 'Sawai Mansingh Stadium, Jaipur '),
('7', '8', '1', NULL, '2018-04-12 20:00:00'	, 'Rajiv Gandhi International Stadium, Uppal, Hyderabad '),
('8', '7', '5', NULL, '2018-04-13 20:00:00'	, 'M Chinnaswamy Stadium, Bengaluru '),
('9', '1', '3', NULL, '2018-04-14 16:00:00'	, 'Wankhede Stadium, Mumbai '),
('10', '2', '8', NULL, '2018-04-14 20:00:00'	, 'Eden Gardens, Kolkata '),
('11', '7', '6', NULL, '2018-04-15 16:00:00'	, 'M Chinnaswamy Stadium, Bengaluru '),
('12', '5', '4', NULL, '2018-04-15 20:00:00'	, 'Punjab Cricket Association IS Bindra Stadium, Mohali, Chandigarh '),
('13', '2', '3', NULL, '2018-04-16 20:00:00'	, 'Eden Gardens, Kolkata '),
('14', '1', '7', NULL, '2018-04-17 20:00:00'	, 'Wankhede Stadium, Mumbai '),
('15', '6', '2', NULL, '2018-04-18 20:00:00'	, 'Sawai Mansingh Stadium, Jaipur '),
('16', '5', '8', NULL, '2018-04-19 20:00:00'	, 'Punjab Cricket Association IS Bindra Stadium, Mohali, Chandigarh '),
('17', '4', '6', NULL, '2018-04-20 20:00:00'	, 'MA Chidambaram Stadium, Chepauk, Chennai '),
('18', '2', '5', NULL, '2018-04-21 16:00:00'	, 'Eden Gardens, Kolkata '),
('19', '3', '7', NULL, '2018-04-21 20:00:00'	, 'Feroz Shah Kotla, Delhi '),
('20', '8', '4', NULL, '2018-04-22 16:00:00'	, 'Rajiv Gandhi International Stadium, Uppal, Hyderabad '),
('21', '6', '1', NULL, '2018-04-22 20:00:00'	, 'Sawai Mansingh Stadium, Jaipur '),
('22', '3', '5', NULL, '2018-04-23 20:00:00'	, 'Feroz Shah Kotla, Delhi '),
('23', '1', '8', NULL, '2018-04-24 20:00:00'	, 'Wankhede Stadium, Mumbai '),
('24', '7', '4', NULL, '2018-04-25 20:00:00'	, 'M Chinnaswamy Stadium, Bengaluru '),
('25', '8', '5', NULL, '2018-04-26 20:00:00'	, 'Rajiv Gandhi International Stadium, Uppal, Hyderabad '),
('26', '3', '2', NULL, '2018-04-27 20:00:00'	, 'Feroz Shah Kotla, Delhi '),
('27', '4', '1', NULL, '2018-04-28 20:00:00'	, 'MA Chidambaram Stadium, Chepauk, Chennai '),
('28', '6', '8', NULL, '2018-04-29 16:00:00'	, 'Sawai Mansingh Stadium, Jaipur '),
('29', '7', '2', NULL, '2018-04-29 20:00:00'	, 'M Chinnaswamy Stadium, Bengaluru '),
('30', '4', '3', NULL, '2018-04-30 20:00:00'	, 'MA Chidambaram Stadium, Chepauk, Chennai '),
('31', '7', '1', NULL, '2018-05-01 20:00:00'	, 'M Chinnaswamy Stadium, Bengaluru '),
('32', '3', '6', NULL, '2018-05-02 20:00:00'	, 'Feroz Shah Kotla, Delhi '),
('33', '2', '4', NULL, '2018-05-03 20:00:00'	, 'Eden Gardens, Kolkata '),
('34', '5', '1', NULL, '2018-05-04 20:00:00'	, 'Holkar Cricket Stadium, Indore '),
('35', '4', '7', NULL, '2018-05-05 16:00:00'	, 'MA Chidambaram Stadium, Chepauk, Chennai '),
('36', '8', '3', NULL, '2018-05-05 20:00:00'	, 'Rajiv Gandhi International Stadium, Uppal, Hyderabad '),
('37', '1', '2', NULL, '2018-05-06 16:00:00'	, 'Wankhede Stadium, Mumbai '),
('38', '5', '6', NULL, '2018-05-06 20:00:00'	, 'Holkar Cricket Stadium, Indore '),
('39', '8', '7', NULL, '2018-05-07 20:00:00'	, 'Rajiv Gandhi International Stadium, Uppal, Hyderabad '),
('40', '6', '5', NULL, '2018-05-08 20:00:00'	, 'Sawai Mansingh Stadium, Jaipur '),
('41', '2', '1', NULL, '2018-05-09 20:00:00'	, 'Eden Gardens, Kolkata '),
('42', '3', '8', NULL, '2018-05-10 20:00:00'	, 'Feroz Shah Kotla, Delhi '),
('43', '6', '4', NULL, '2018-05-11 20:00:00'	, 'Sawai Mansingh Stadium, Jaipur '),
('44', '5', '2', NULL, '2018-05-12 16:00:00'	, 'Holkar Cricket Stadium, Indore '),
('45', '7', '3', NULL, '2018-05-12 20:00:00'	, 'M Chinnaswamy Stadium, Bengaluru '),
('46', '4', '8', NULL, '2018-05-13 16:00:00'	, 'MA Chidambaram Stadium, Chepauk, Chennai '),
('47', '1', '6', NULL, '2018-05-13 20:00:00'	, 'Wankhede Stadium, Mumbai '),
('48', '5', '7', NULL, '2018-05-14 20:00:00'	, 'Holkar Cricket Stadium, Indore '),
('49', '2', '6', NULL, '2018-05-15 20:00:00'	, 'Eden Gardens, Kolkata '),
('50', '1', '5', NULL, '2018-05-16 20:00:00'	, 'Wankhede Stadium, Mumbai '),
('51', '7', '8', NULL, '2018-05-17 20:00:00'	, 'M Chinnaswamy Stadium, Bengaluru '),
('52', '3', '4', NULL, '2018-05-18 20:00:00'	, 'Feroz Shah Kotla, Delhi '),
('53', '6', '7', NULL, '2018-05-19 16:00:00'	, 'Sawai Mansingh Stadium, Jaipur '),
('54', '8', '2', NULL, '2018-05-19 20:00:00'	, 'Rajiv Gandhi International Stadium, Uppal, Hyderabad '),
('55', '3', '1', NULL, '2018-05-20 16:00:00'	, 'Feroz Shah Kotla, Delhi '),
('56', '4', '5', NULL, '2018-05-20 20:00:00'	, 'MA Chidambaram Stadium, Chepauk, Chennai');
