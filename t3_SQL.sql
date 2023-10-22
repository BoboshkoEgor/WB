CREAte table users (
  user_id SERIAL PRIMARY KEY,
  birth_date DATE,
  sex VARCHAR(6),
  age DECIMAL(2,0)
);
  
CREAte table items (
  item_id SERIAL PRIMARY KEY,
  description VARCHAR,
  price float,
  category VARCHAR
);

CREAte table rating (
  item_id INT,
  user_id INT,
  review VARCHAR
);

ALTER TABLE rating
    ADD CONSTRAINT fk_rating_users FOREIGN KEY (user_id) REFERENCES users (user_id);

ALTER TABLE rating
    ADD CONSTRAINT fk_rating_items FOREIGN KEY (item_id) REFERENCES items (iteЫm_id);
    
Alter table rating
add COLUMN rating_id SERIAL

ALTER TABLE rating
ADD PRIMARY KEY (rating_id);

insert into users (
    user_id,
    birth_date,
    sex
  )
SELECT
  generate_series,
  now() - (random() * (interval '80 years')) - interval '20 years' AS random_date,
  ('[0:1]={female,male}'::text[])[trunc(random()*2)] as random_choice
  
FROM generate_series(1, 20)

UPDATE users
SET age = date_part('year',age(users.birth_date)) 

insert into items (
  	item_id,
    description,
    price,
    category
  )
SELECT
  generate_series,
  md5(random()::text) || 'WB'  AS random_hash,
  floor(random() * 1000)::int AS random_int,
  ('[0:3]={electronics, clothes, books, others}'::text[])[trunc(random()*4)] as random_choice
  
FROM generate_series(1, 20)



insert into rating (
  	rating_id,
  	item_id,
    user_id,Ы
    review
  )
SELECT
  generate_series,
  floor(random() * 20 + 1)::int AS random_int_1,
  floor(random() * 20 + 1)::int AS random_int_2,
  md5(random()::text) || 'WB' AS random_hash
  
FROM generate_series(1, 30)
