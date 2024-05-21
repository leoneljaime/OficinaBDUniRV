--- Listar de clientes de todos os pedidos (left join); 
       --              *(será criada tabela UF para exemplo didático) 


select IdCliente,c.nome,c.UF,

CASE
        WHEN c.UF='GO' THEN 'Goiás'
        WHEN c.UF='TO' THEN 'Tocantins'
        WHEN c.UF='MT' THEN 'Mato Grosso'
        ELSE 'Nao Sei'
END
, e.UF,e.descricao
from Pedido pd
inner join Cliente c ON c.Id = pd.IdCliente
left join Estado e  ON e.uf = c.UF
group by IdCliente,c.nome,c.UF,e.UF,e.descricao
