-- Banco de Dados de contato

CREATE DATABASE IF NOT EXISTS db_agenda
DEFAULT CHARACTER SET utf8
COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `db_agenda`.`tb_usuarios` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nome_usuario` VARCHAR(150) NOT NULL,
  `email_usuario` VARCHAR(150) NOT NULL,
  `senha_usuario` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE (`email_usuario`)
);

CREATE TABLE IF NOT EXISTS `db_agenda`.`contatos` (
  `id_contato` INT NOT NULL AUTO_INCREMENT,
  `nome_contato` VARCHAR(100) NOT NULL,
  `telefone_contato` VARCHAR(12) NULL,
  `celular_contato` VARCHAR(12) NULL,
  `email_contato` VARCHAR(45) NULL,
  `id_usuario` INT NOT NULL,
  PRIMARY KEY (`id_contato`),
  CONSTRAINT `fk_contatos_usuarios`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `db_agenda`.`tb_usuarios` (`id_usuario`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);