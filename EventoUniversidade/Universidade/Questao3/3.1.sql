INSERT INTO Estudante VALUES 
 (1, 'Maria', 'Paula', 'Quixeramobim', 80000000, 'CE', '8899994444', '2000-01-16', 'Feminino', 'Graduação', 'Engenharia de Software', 12340);
 /*ERROR:  Key (numero)=(1) already exists.duplicate key value violates unique constraint "estudante_pkey" 

ERROR:  duplicate key value violates unique constraint "estudante_pkey"
SQL state: 23505
Detail: Key (numero)=(1) already exists.
O erro é que já existe um estudante com número 1
 */