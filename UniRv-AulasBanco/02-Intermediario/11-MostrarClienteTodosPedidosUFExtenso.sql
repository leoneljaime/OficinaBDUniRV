--Listar de clientes de todos os pedidos mostrar UF por extenso (case);


select IdCliente,c.nome,UF,

CASE
        WHEN UF='GO' THEN 'Goiás'
        WHEN UF='TO' THEN 'Tocantins'
        WHEN UF='MT' THEN 'Mato Grosso'
        ELSE 'Nao Sei'
END
, COUNT(pd.Id) as QtdPedidos 

from Pedido pd
inner join Cliente c ON c.Id = pd.IdCliente
group by IdCliente,c.nome,UF
