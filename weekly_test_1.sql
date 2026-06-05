use startersql;
CREATE TABLE transactions
(
transaction_id INT PRIMARY KEY,
merchant_id INT,
credit_card_id INT,
amount INT,
transaction_timestamp TIMESTAMP
);
INSERT INTO transactions
VALUES
(1, 101, 1, 100, '2022-09-25 12:00:00'),
(2, 101, 1, 100, '2022-09-25 12:08:00'),
(3, 101, 1, 100, '2022-09-25 12:28:00'),
(4, 102, 2, 300, '2022-09-25 12:00:00'),
(6, 102, 2, 400, '2022-09-25 14:00:00');

select * from transactions;

select count(*) as payment_count
from transaction t1
join  transaction t2 on t1.merchant_id=t2.merchant_id where 
t1.amount=t2.amount and t1.credit_card_id = t2.credit_card_id
