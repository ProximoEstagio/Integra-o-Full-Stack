-- phpMyAdmin SQL Dump
-- version 5.2.1
-- Host: 127.0.0.1:3307
-- Gerado em: 04/09/2025 às 15:38
-- Banco: proximo_estagio

CREATE DATABASE IF NOT EXISTS proximo_estagio;
USE proximo_estagio;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET NAMES utf8mb4;

-- ====================
-- Tabela: professor
-- ====================
CREATE TABLE `professor` (
  `idprofessor` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `registro` CHAR(13) NOT NULL,
  `professorcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ====================
-- Tabela: curso
-- ====================
CREATE TABLE `curso` (
  `idcurso` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeCurso` VARCHAR(45) NOT NULL,
  `professor_idprofessor1` INT(11) NOT NULL,
  PRIMARY KEY (`idcurso`),
  FOREIGN KEY (`professor_idprofessor1`) REFERENCES `professor`(`idprofessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ====================
-- Tabela: aluno
-- ====================
CREATE TABLE `aluno` (
  `idaluno` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `ra` CHAR(13) NOT NULL,
  `Curso_idcurso` INT(11) NOT NULL,
  PRIMARY KEY (`idaluno`),
  FOREIGN KEY (`Curso_idcurso`) REFERENCES `curso`(`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ====================
-- Tabela: tipo
-- ====================
CREATE TABLE `tipo` (
  `idtipo` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ====================
-- Tabela: documento
-- ====================
CREATE TABLE `documento` (
  `iddocumento` INT(11) NOT NULL AUTO_INCREMENT,
  `dataEmissao` DATETIME NOT NULL,
  `descricao` VARCHAR(45) DEFAULT NULL,
  `aluno_idaluno` INT(11) NOT NULL,
  `tipo_idtipo` INT(11) NOT NULL,
  PRIMARY KEY (`iddocumento`, `tipo_idtipo`),
  FOREIGN KEY (`aluno_idaluno`) REFERENCES `aluno`(`idaluno`),
  FOREIGN KEY (`tipo_idtipo`) REFERENCES `tipo`(`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ====================
-- Tabela: status
-- ====================
CREATE TABLE `status` (
  `cod_status` INT(2) NOT NULL AUTO_INCREMENT,
  `nomeStatus` VARCHAR(20) NOT NULL,
  `descricao` VARCHAR(200),
  PRIMARY KEY (`cod_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ====================
-- Tabela: validacao 
-- ====================
CREATE TABLE `validacao` (
  `professor_idprofessor` INT(11) NOT NULL,
  `documento_iddocumento` INT(11) NOT NULL,
  `documento_tipo_idtipo` INT(11) NOT NULL,
  `status_cod_status` INT(2) NOT NULL,
  PRIMARY KEY (`documento_tipo_idtipo`, `documento_iddocumento`, `professor_idprofessor`),
  FOREIGN KEY (`professor_idprofessor`) REFERENCES `professor`(`idprofessor`),
  FOREIGN KEY (`documento_iddocumento`, `documento_tipo_idtipo`) REFERENCES `documento`(`iddocumento`, `tipo_idtipo`),
  FOREIGN KEY (`status_cod_status`) REFERENCES `status`(`cod_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ====================
-- Tabela: feedback
-- ====================
CREATE TABLE `feedback` (
  `idfeedback` INT(11) NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `aluno_idaluno` INT(11) NOT NULL,
  `validacao_documento_tipo_idtipo` INT(11) NOT NULL,
  `validacao_documento_iddocumento` INT(11) NOT NULL,
  `validacao_professor_idprofessor` INT(11) NOT NULL,
  PRIMARY KEY (`idfeedback`, `validacao_documento_tipo_idtipo`, `validacao_documento_iddocumento`, `validacao_professor_idprofessor`),
  FOREIGN KEY (`aluno_idaluno`) REFERENCES `aluno`(`idaluno`),
  FOREIGN KEY (`validacao_documento_tipo_idtipo`, `validacao_documento_iddocumento`, `validacao_professor_idprofessor`) 
    REFERENCES `validacao`(`documento_tipo_idtipo`, `documento_iddocumento`, `professor_idprofessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

