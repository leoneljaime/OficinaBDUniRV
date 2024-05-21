
-- Mostrar quantidade de pedido de um cliente especifico (group by);
select IdCliente, COUNT(pd.Id) as QtdPedidos  from Pedido pd
group by IdCliente



select IdCliente,c.nome, COUNT(pd.Id) as QtdPedidos  from Pedido pd
inner join Cliente c ON c.Id = pd.IdCliente
group by IdCliente,c.nome

--Joao
select IdCliente,c.nome, COUNT(pd.Id) as QtdPedidos  from Pedido pd
inner join Cliente c ON c.Id = pd.IdCliente where pd.IdCliente='2000'
group by IdCliente,c.nome
