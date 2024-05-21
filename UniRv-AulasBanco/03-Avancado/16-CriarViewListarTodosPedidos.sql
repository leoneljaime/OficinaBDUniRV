
--Criar View Listar todos os pedidos
create view vwListaTodosPedido
as 
select pd.*,c.nome, c.DataNascimento,c.Cidade,c.RG, e.UF,e.descricao
from Pedido pd
inner join Cliente c ON c.Id = pd.IdCliente
left join Estado e  ON e.uf = c.UF
