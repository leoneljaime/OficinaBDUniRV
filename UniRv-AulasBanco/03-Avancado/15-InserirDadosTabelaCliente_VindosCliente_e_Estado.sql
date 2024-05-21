--- Inserir dados na tabela cliente2 vindos da tabela cliente
insert into Cliente2 
	SELECT * FROM Cliente
	
	
--- Inserir dados na tabela cliente2 vindos da tabela x
insert into Cliente3 (Id, Nome)
	SELECT UF, Descricao FROM Estado