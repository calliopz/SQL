SELECT CAST(pgv.data_acesso AS DATE) , COUNT(pgv.cod_pageviews)
FROM Pageviews pgv
GROUP BY CAST(pgv.data_acesso AS DATE)
ORDER BY CAST(pgv.data_acesso AS DATE) DESC;


SELECT MONTH(pgv.data_acesso), YEAR(pgv.data_acesso), COUNT(pgv.cod_pageviews)
FROM Pageviews pgv
GROUP BY MONTH(pgv.data_acesso), YEAR(pgv.data_acesso);


SELECT YEAR(pgv.data_acesso), COUNT(pgv.cod_pageviews)
FROM Pageviews pgv
GROUP BY YEAR(pgv.data_acesso);


SELECT est.regiao, COUNT(cli.cod_cliente)
FROM Clientes cli
INNER JOIN Cidade cid
  ON cid.id_cidade = cli.id_cidade
INNER JOIN Estado est
  ON cid.id_estado = est.id_estado
ORDER BY COUNT(cli.cod_cliente) DESC;


SELECT pla.nome, COUNT(ven.cod_venda)
FROM Clientes cli
INNER JOIN Vendas ven
  ON cli.cod_cliente = ven.cod_cliente
INNER JOIN Planos pla
  ON ven.cod_plano = pla.cod_plano
GROUP BY pla.nome
ORDER BY COUNT(ven.cod_venda) DESC;


SELECT cli.tipo, COUNT(cli.cod_cliente)
FROM Clientes cli
GROUP BY cli.tipo;


SELECT men.nome, COUNT(pgv.cod_pageviews)
FROM Pageviews pgv
INNER JOIN Menu men
  ON men.cod_menu = pgv.cod_menu
GROUP BY men.nome
ORDER BY COUNT(pgv.cod_pageviews) DESC;