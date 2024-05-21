
--Normal
select * from Cliente

--
--1000	JOSE	2005-04-12 00:00:00.000	4400011	Rio Verde	GO
--2000	JOAO	1970-01-15 00:00:00.000	4400012	Rio verde	GO
--3000	CARLOS	1982-03-28 00:00:00.000	4400013	Palmas	TO
--4000	MARIA	1994-10-05 00:00:00.000	4400014	Cuiaba	MT

--excluir todos os cliente
delete Cliente 


insert into Cliente	(Id,nome,DataNascimento,RG,Cidade,UF)
values ('5000','Leonel Jaime','28/03/1986',null,'Quirinópolis','GO')

update Cliente set RG = '4730011' where Id='5000'

--Exclui
delete Cliente  where Id='5000'
