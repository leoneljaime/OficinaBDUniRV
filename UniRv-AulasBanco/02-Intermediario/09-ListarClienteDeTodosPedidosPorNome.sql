--Listar de clientes de todos os pedidos (distinct);
select distinct(IdCliente)   from Pedido

-- Listar de clientes com nome de todos os pedidos (distinct e inner join);
select distinct(IdCliente), c.Nome  from Pedido pd
inner join Cliente c ON c.Id = pd.IdCliente