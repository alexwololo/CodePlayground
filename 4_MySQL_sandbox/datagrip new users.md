# fråga

-- This function is multibyte safe. Vad betyder detta?
SELECT user FROM mysql.user;

CREATE USER 'rootuser'@'%' IDENTIFIED WITH mysql_native_password BY 'Linus18!!';
GRANT ALL PRIVILEGES ON _._ TO 'rootuser'@'%';
FLUSH PRIVILEGES;
