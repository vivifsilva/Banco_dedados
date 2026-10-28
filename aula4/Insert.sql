/* 1° */
INSERT INTO cliente (nome_cliente, email, cidade, estado, data_cadastro)
VALUES ('Rubervaldo Sesiano', 'ruber.sesi@gmail.com', 'Jaguariúna', 'SP', 2026-10-28);


/* 2° */
INSERT INTO produto (nome_produto, categoria, marca, preco_unitario, estoque, ativo, data_cadastro) 
VALUES ('MousePad 5POL', 'Acessórios', 'Lumix', 59.98, 35, 'Ativo', CURRENT_DATE);

/* 3° */
INSERT INTO venda (id_produto, id_cliente, data_venda, quantidade, preco_unitario_venda, desconto_percentual, forma_pagamento, status_venda) 
VALUES (1, 5, '2026-10-21', 10, 59.98, 1.33, 'PIX', 'Concluída');