CREATE TABLE workers(
  worker_id SMALLINT,
  worker_name VARCHAR(30),
  worker_salary NUMERIC,

  CONSTRAINT worker_id_pk PRIMARY KEY(worker_id)
);


INSERT INTO workers VALUES(101, 'Ali Can', 10000);
INSERT INTO workers VALUES(102, 'Veli Han', 4000);
INSERT INTO workers VALUES(103, 'Aisha Can', 7000);
INSERT INTO workers VALUES(104, 'Angie Ocean', 12000);
INSERT INTO workers VALUES(105, 'Musa Ahmet', 9000);
INSERT INTO workers VALUES(106, 'Ali Can', 19000);
INSERT INTO workers VALUES(107, 'Aygul Aksoy',13000);
INSERT INTO workers VALUES(108, 'Hasan Basri', 16000);
INSERT INTO workers VALUES(109, 'Fatih Tamer', 18000);
INSERT INTO workers VALUES(110, 'Emel Ebru', 8000);



SELECT * FROM workers;







