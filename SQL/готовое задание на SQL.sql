������� �� ��������� �������� � ��:								
1. �������� �� ������� user ���� �������������, � ������� level_id=1, skill > 799000 � � ����� ����������� ����� �								
SELECT * FROM user WHERE (level_id = 1 and skill > 799000 and user_name LIKE '%a%')								
2. ������� ���� �������������, � ������� skill ������ 100000								
DELETE FROM user WHERE skill < 100000;								
3. ������� ��� ������ �� ������� user � ������� �������� �� ���� skill 								
SELECT * FROM user ORDER BY skill DESC								
4. �������� � ������� user ������ ������������ �� ����� Oleg, � ������� 4 � skill =10								
INSERT INTO user  VALUES (7, 'Oleg', 4, 10)								
5. �������� ������ � ������� user -  ��� ������������� � level_id ������ 2 ���������� skill 2000000								
UPDATE user SET skill = 2000000 WHERE level_id <2								
6. ������� user_name ���� ������������� ������ admin ��������� ���������								
SELECT user_name FROM user WHERE level_id IN ( SELECT id FROM level WHERE level_name = 'admin') 								
7. ������� user_name ���� ������������� ������ admin ��������� join								
SELECT user.user_name FROM user JOIN level ON user.level_id = level.id 								
WHERE level.level_name = 'admin';								
