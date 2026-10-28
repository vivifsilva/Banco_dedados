/* 1° */
SELECT * FROM produto;

/* 2° */
SELECT nome_produto, estoque, marca FROM produto;

/* 3° */
SELECT nome_produto, categoria, preco_unitario, data_cadastro FROM produto
ORDER BY marca ASC;

/* 4° */
SELECT nome_produto, categoria, preco_unitario, data_cadastro FROM produto
ORDER BY data_cadastro ASC;

/* 5° */
SELECT * FROM cliente;

/* 6° */
SELECT nome_cliente, email, cidade, estado FROM cliente;

/* 7° */
SELECT nome_cliente, cidade, estado FROM cliente
ORDER BY estado ASC;

/* 8° */
SELECT nome_cliente, email,  FROM cliente
ORDER BY data_cadastro ASC;

/* 9° */
SELECT * FROM venda;

/* 10° */
SELECT cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda,
venda.forma_pagamento
FROM cliente
INNER JOIN venda
ON cliente.id_cliente = venda.id_produto;

/* 11° */
SELECT produto.nome_produto, venda.data_venda, venda.quantidade, 
venda.status_venda
FROM venda
INNER JOIN produto 
ON venda.id_produto = produto.id_produto;

/* 12° */
SELECT produto.nome_produto, produto.preco_unitario, venda.forma_pagamento
FROM produto
INNER JOIN venda
ON venda.id_produto = produto.id_produto
WHERE venda.forma_pagamento IN("pix", "Boleto");

/* 13° */
SELECT cliente.nome_cliente, produto.nome_produto, venda.data_venda, 
venda.quantidade
FROM venda
INNER JOIN produto 
ON venda.id_produto = produto.id_produto
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente;

/* 14° */
SELECT produto.nome_produto, venda.desconto_percentual,
venda.forma_pagamento
FROM venda
INNER JOIN produto
ON venda.id_produto = produto.id_produto
ORDER BY venda.data_venda ASC;

/* 15° */
SELECT produto.nome_produto,  cliente.nome_cliente, venda.desconto_percentual, 
venda.forma_pagamento
FROM venda
INNER JOIN produto ON venda.id_produto = produto.id_produto
INNER JOIN cliente ON venda.id_cliente = cliente.id_cliente
ORDER BY venda.status_venda ASC;

/* 16° */
SELECT  cliente.nome_cliente, cliente.email, produto.nome_produto, 
produto.marca, produto.categoria, venda.forma_pagamento, venda.status_venda
FROM venda
INNER JOIN produto ON venda.id_produto = produto.id_produto
INNER JOIN cliente ON venda.id_cliente = cliente.id_cliente
WHERE venda.status_venda = 'Cancelada' OR venda.status_venda = 'Concluída'
ORDER BY venda.status_venda DESC;