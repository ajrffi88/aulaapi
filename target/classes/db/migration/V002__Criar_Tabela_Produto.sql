CREATE TABLE `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(255) DEFAULT NULL,
  `preco` decimal(19,2) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

ALTER TABLE produto ADD CONSTRAINT FK_produto_categoria 
FOREIGN KEY(categoria_id) REFERENCES categoria(id);

INSERT INTO `produto` (`id`,`nome_produto`,`preco`,`categoria_id`) VALUES (1,'Mouse',39.90,1);
INSERT INTO `produto` (`id`,`nome_produto`,`preco`,`categoria_id`) VALUES (2,'Mesa para computador',357.80,2);
INSERT INTO `produto` (`id`,`nome_produto`,`preco`,`categoria_id`) VALUES (3,'Desodorante Avanço',5.20,3);
