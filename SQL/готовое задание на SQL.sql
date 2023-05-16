«адани€ на написание запросов к Ѕƒ:								
1. ќтобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречаетс€ буква а								
SELECT * FROM user WHERE (level_id = 1 and skill > 799000 and user_name LIKE '%a%')								
2. ”далить всех пользователей, у которых skill меньше 100000								
DELETE FROM user WHERE skill < 100000;								
3. ¬ывести все данные из таблицы user в пор€дке убывани€ по полю skill 								
SELECT * FROM user ORDER BY skill DESC								
4. ƒобавить в таблицу user нового пользовател€ по имени Oleg, с уровнем 4 и skill =10								
INSERT INTO user  VALUES (7, 'Oleg', 4, 10)								
5. ќбновить данные в таблице user -  дл€ пользователей с level_id меньше 2 проставить skill 2000000								
UPDATE user SET skill = 2000000 WHERE level_id <2								
6. ¬ыбрать user_name всех пользователей уровн€ admin использу€ подзапрос								
SELECT user_name FROM user WHERE level_id IN ( SELECT id FROM level WHERE level_name = 'admin') 								
7. ¬ыбрать user_name всех пользователей уровн€ admin использу€ join								
SELECT user.user_name FROM user JOIN level ON user.level_id = level.id 								
WHERE level.level_name = 'admin';								
