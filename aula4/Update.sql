/* 1° */
/* O exercicio 1 não pode ser feito, pois o email foi usado como chave unica, imposibilitando que os clientes tenham o mesmo email */

/* 2° */ 
UPDATE cliente
SET data_cadastro = '2026-01-01'
WHERE cidade = 'Manaus';

/* 3° */
UPDATE cliente
SET nome_cliente = 'Michael Jackson'
WHERE id_cliente  = 10;

/*4°*/
UPDATE produto
SET nome_produto = 'Notebook Lenovo IdeaPAD 7'
WHERE id_produto  = 1;

/*5°*/
UPDATE produto
SET preco_unitario = 4999.99
WHERE marca = 'DELL'
AND categoria = 'Notebook';

/* 6° */
UPDATE venda
SET desconto_percentual = 0.01
WHERE quantidade >= 2;