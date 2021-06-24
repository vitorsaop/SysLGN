# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.24
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2021-06-24 00:05:35
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for lgn
DROP DATABASE IF EXISTS `lgn`;
CREATE DATABASE IF NOT EXISTS `lgn` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lgn`;


# Dumping structure for table lgn.agenda
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_VEICULO` int(10) DEFAULT NULL,
  `ID_DOCENTE` int(10) DEFAULT NULL,
  `NOME_VEICULO` varchar(30) DEFAULT NULL,
  `FLAG_VEICULOPROPRIO` int(11) DEFAULT '1',
  `ID_MOTORISTA` int(11) DEFAULT NULL,
  `NOME_MOTORISTA` varchar(60) DEFAULT NULL,
  `OBS` varchar(200) DEFAULT NULL,
  `DATAAGENDAINI` date DEFAULT NULL,
  `DATAAGENDAFIM` date DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `FLAG_CANCELAR` int(1) unsigned zerofill DEFAULT '0',
  `HORAAGENDAINI` time DEFAULT NULL,
  `HORAAGENDAFIM` time DEFAULT NULL,
  `KMSAIDA` double DEFAULT '0',
  `KMRETORNO` double DEFAULT '0',
  `KMSALDO` double DEFAULT '0',
  `ID_TIPOVIAGEM` int(11) DEFAULT NULL,
  `CUSTOKM` decimal(10,2) DEFAULT '0.00',
  `CUSTOTOTALKM` decimal(10,2) DEFAULT '0.00',
  `CUSTOTOTALCOMBUSTIVEL` decimal(10,2) DEFAULT '0.00',
  `CUSTOLITRO` decimal(10,2) DEFAULT '0.00',
  `CUSTOTOTALGERAL` decimal(10,2) DEFAULT '0.00',
  `ID_COMBUSTIVEL` int(11) DEFAULT NULL,
  `FLAG_CUSTOALTERADO` int(11) DEFAULT '0',
  PRIMARY KEY (`AI`),
  KEY `FK_agenda_cad_veiculos` (`ID_VEICULO`),
  KEY `FK_agenda_cad_geral` (`ID_MOTORISTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.agenda_tratores
DROP TABLE IF EXISTS `agenda_tratores`;
CREATE TABLE IF NOT EXISTS `agenda_tratores` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_DOCENTE` int(10) DEFAULT '0',
  `ID_TRATORISTA` int(10) DEFAULT '0',
  `NOME_TRATORISTA` varchar(60) DEFAULT NULL,
  `ID_VEICULO` int(10) DEFAULT NULL,
  `NOME_VEICULO` varchar(30) DEFAULT NULL,
  `DATAAGENDAINI` date DEFAULT NULL,
  `DATAAGENDAFIM` date DEFAULT NULL,
  `HORASAIDA` double DEFAULT NULL,
  `HORACHEGADA` double DEFAULT NULL,
  `HORATOTAL` double DEFAULT NULL,
  `CUSTOHORA` decimal(10,2) DEFAULT '0.00',
  `CUSTOTOTALHORA` decimal(10,2) DEFAULT '0.00',
  `CUSTOLITRO` decimal(10,2) DEFAULT '0.00',
  `CUSTOTOTALCOMBUSTIVEL` decimal(10,2) DEFAULT '0.00',
  `CUSTOTOTALGERAL` decimal(10,2) DEFAULT '0.00',
  `ID_COMBUSTIVEL` int(11) DEFAULT NULL,
  `FLAG_CANCELAR` int(1) DEFAULT '0',
  `OBS` varchar(200) DEFAULT NULL,
  `FLAG_CUSTOALTERADO` int(11) DEFAULT '0',
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.alunos_atividades
DROP TABLE IF EXISTS `alunos_atividades`;
CREATE TABLE IF NOT EXISTS `alunos_atividades` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_CADGERAL` int(11) DEFAULT NULL,
  `ID_ATIVIDADE` int(11) DEFAULT NULL,
  `ID_AGENCIAFIN` int(11) DEFAULT NULL,
  `ID_DOCENTE` int(10) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `DATAATIVINI` date DEFAULT NULL,
  `DATAATIVFIM` date DEFAULT NULL,
  `DATAAGEINI` date DEFAULT NULL,
  `DATAAGEFIM` date DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_alunos_atividades_cad_geral` (`ID_CADGERAL`),
  KEY `FK_alunos_atividades_cad_atividades` (`ID_ATIVIDADE`),
  KEY `FK_alunos_atividades_cad_agenciafinanciadora` (`ID_AGENCIAFIN`),
  KEY `FK_alunos_atividades_cad_geral_2` (`ID_DOCENTE`),
  CONSTRAINT `FK_alunos_atividades_cad_agenciafinanciadora` FOREIGN KEY (`ID_AGENCIAFIN`) REFERENCES `cad_agenciafinanciadora` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_alunos_atividades_cad_atividades` FOREIGN KEY (`ID_ATIVIDADE`) REFERENCES `cad_atividades` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_alunos_atividades_cad_geral` FOREIGN KEY (`ID_CADGERAL`) REFERENCES `cad_geral` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_alunos_atividades_cad_geral_2` FOREIGN KEY (`ID_DOCENTE`) REFERENCES `cad_geral` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_agenciafinanciadora
DROP TABLE IF EXISTS `cad_agenciafinanciadora`;
CREATE TABLE IF NOT EXISTS `cad_agenciafinanciadora` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_AGENCIAFIN` varchar(10) DEFAULT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_atividades
DROP TABLE IF EXISTS `cad_atividades`;
CREATE TABLE IF NOT EXISTS `cad_atividades` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_ATIVIDADE` varchar(10) DEFAULT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_cidades
DROP TABLE IF EXISTS `cad_cidades`;
CREATE TABLE IF NOT EXISTS `cad_cidades` (
  `AI` int(4) NOT NULL AUTO_INCREMENT,
  `ID_UF` int(2) DEFAULT NULL,
  `UF` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `CIDADE` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_cad_cidades_cad_uf` (`ID_UF`),
  CONSTRAINT `FK_cad_cidades_cad_uf` FOREIGN KEY (`ID_UF`) REFERENCES `cad_uf` (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_classes
DROP TABLE IF EXISTS `cad_classes`;
CREATE TABLE IF NOT EXISTS `cad_classes` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_CLASSE` varchar(20) DEFAULT NULL,
  `NOME` varchar(20) DEFAULT NULL,
  `OBS` varchar(100) DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_combustivel
DROP TABLE IF EXISTS `cad_combustivel`;
CREATE TABLE IF NOT EXISTS `cad_combustivel` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_COMBUSTIVEL` varchar(10) DEFAULT NULL,
  `COMBUSTIVEL` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_emails
DROP TABLE IF EXISTS `cad_emails`;
CREATE TABLE IF NOT EXISTS `cad_emails` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_CADGERAL` int(10) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_cad_emails_cad_geral` (`ID_CADGERAL`),
  CONSTRAINT `FK_cad_emails_cad_geral` FOREIGN KEY (`ID_CADGERAL`) REFERENCES `cad_geral` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_enderecos
DROP TABLE IF EXISTS `cad_enderecos`;
CREATE TABLE IF NOT EXISTS `cad_enderecos` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_CADGERAL` int(10) DEFAULT NULL,
  `ID_CIDADE` int(10) DEFAULT NULL,
  `ENDERECO` varchar(60) DEFAULT NULL,
  `NUMERO` varchar(20) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `COMPLEMENTO` varchar(30) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_cad_enderecos_cad_geral` (`ID_CADGERAL`),
  KEY `FK_cad_enderecos_cad_cidades` (`ID_CIDADE`),
  CONSTRAINT `FK_cad_enderecos_cad_cidades` FOREIGN KEY (`ID_CIDADE`) REFERENCES `cad_cidades` (`AI`),
  CONSTRAINT `FK_cad_enderecos_cad_geral` FOREIGN KEY (`ID_CADGERAL`) REFERENCES `cad_geral` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_funcoes
DROP TABLE IF EXISTS `cad_funcoes`;
CREATE TABLE IF NOT EXISTS `cad_funcoes` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_FUNCAO` varchar(20) DEFAULT NULL,
  `NOME` varchar(20) DEFAULT NULL,
  `OBS` varchar(50) DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `USUARIO` int(30) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_geral
DROP TABLE IF EXISTS `cad_geral`;
CREATE TABLE IF NOT EXISTS `cad_geral` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_CADGERAL` varchar(20) DEFAULT NULL,
  `NOME` varchar(60) DEFAULT NULL,
  `RG` varchar(20) DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `ID_USP` varchar(20) DEFAULT NULL,
  `OBS` varchar(200) DEFAULT NULL,
  `ID_FUNCAO` int(11) DEFAULT NULL,
  `ID_CLASSE` int(11) DEFAULT NULL,
  `FLAGDOCENTE` int(10) DEFAULT '0',
  `FLAGFUNCIONARIO` int(11) DEFAULT '1',
  `FLAGALUNO` int(11) DEFAULT '0',
  `FLAGOUTROS` int(11) DEFAULT '0',
  `STATUS` int(10) DEFAULT '1',
  `USUARIO` varchar(30) DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_cad_geral_cad_funcoes` (`ID_FUNCAO`),
  KEY `FK_cad_geral_cad_classes` (`ID_CLASSE`),
  CONSTRAINT `FK_cad_geral_cad_classes` FOREIGN KEY (`ID_CLASSE`) REFERENCES `cad_classes` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_cad_geral_cad_funcoes` FOREIGN KEY (`ID_FUNCAO`) REFERENCES `cad_funcoes` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_implementos
DROP TABLE IF EXISTS `cad_implementos`;
CREATE TABLE IF NOT EXISTS `cad_implementos` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_IMPLEMENTO` varchar(20) DEFAULT NULL,
  `IMPLEMENTO` varchar(30) DEFAULT NULL,
  `CUSTO` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_projetos
DROP TABLE IF EXISTS `cad_projetos`;
CREATE TABLE IF NOT EXISTS `cad_projetos` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `TITULO` varchar(50) DEFAULT NULL,
  `DATAINI` date DEFAULT NULL,
  `DATAFIM` date DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_telefones
DROP TABLE IF EXISTS `cad_telefones`;
CREATE TABLE IF NOT EXISTS `cad_telefones` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_CADGERAL` int(10) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `RAMAL` varchar(6) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `OBS` varchar(200) DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_cad_telefones_cad_geral` (`ID_CADGERAL`),
  CONSTRAINT `FK_cad_telefones_cad_geral` FOREIGN KEY (`ID_CADGERAL`) REFERENCES `cad_geral` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_tipoveiculos
DROP TABLE IF EXISTS `cad_tipoveiculos`;
CREATE TABLE IF NOT EXISTS `cad_tipoveiculos` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_TIPOVEICULO` varchar(20) DEFAULT NULL,
  `TIPO` varchar(30) DEFAULT NULL,
  `CUSTO` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_tipoviagem
DROP TABLE IF EXISTS `cad_tipoviagem`;
CREATE TABLE IF NOT EXISTS `cad_tipoviagem` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_TIPOVIAGEM` varchar(10) DEFAULT NULL,
  `NOME` varchar(20) DEFAULT NULL,
  `CUSTOKM` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_uf
DROP TABLE IF EXISTS `cad_uf`;
CREATE TABLE IF NOT EXISTS `cad_uf` (
  `AI` int(2) NOT NULL AUTO_INCREMENT,
  `UF` varchar(10) DEFAULT NULL,
  `NOME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.cad_veiculos
DROP TABLE IF EXISTS `cad_veiculos`;
CREATE TABLE IF NOT EXISTS `cad_veiculos` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_COMBUSTIVEL` int(10) DEFAULT NULL,
  `AUTONOMIA` decimal(10,2) DEFAULT NULL,
  `ID_VEICULO` varchar(20) DEFAULT NULL,
  `ID_TIPOVEICULO` int(11) DEFAULT NULL,
  `NOME` varchar(30) DEFAULT NULL,
  `COR` varchar(50) DEFAULT NULL,
  `LOCAL` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_cad_veiculos_cad_tipoveiculos` (`ID_TIPOVEICULO`),
  KEY `FK_cad_veiculos_cad_combustivel` (`ID_COMBUSTIVEL`),
  CONSTRAINT `FK_cad_veiculos_cad_combustivel` FOREIGN KEY (`ID_COMBUSTIVEL`) REFERENCES `cad_combustivel` (`AI`),
  CONSTRAINT `FK_cad_veiculos_cad_tipoveiculos` FOREIGN KEY (`ID_TIPOVEICULO`) REFERENCES `cad_tipoveiculos` (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.combustivel_avulso
DROP TABLE IF EXISTS `combustivel_avulso`;
CREATE TABLE IF NOT EXISTS `combustivel_avulso` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_DOCENTE` int(10) DEFAULT NULL,
  `ID_COMBUSTIVEL` int(10) DEFAULT NULL,
  `OBS` varchar(200) DEFAULT NULL,
  `CUSTOLITRO` decimal(10,2) DEFAULT '0.00',
  `CUSTOTOTALGERAL` decimal(10,2) DEFAULT '0.00',
  `DATAUSO` date DEFAULT NULL,
  `QTDE` double DEFAULT '0',
  PRIMARY KEY (`AI`),
  KEY `FK_combustivel_avulso_cad_geral` (`ID_DOCENTE`),
  KEY `FK_combustivel_avulso_cad_combustivel` (`ID_COMBUSTIVEL`),
  CONSTRAINT `FK_combustivel_avulso_cad_combustivel` FOREIGN KEY (`ID_COMBUSTIVEL`) REFERENCES `cad_combustivel` (`AI`),
  CONSTRAINT `FK_combustivel_avulso_cad_geral` FOREIGN KEY (`ID_DOCENTE`) REFERENCES `cad_geral` (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.combustivel_valores
DROP TABLE IF EXISTS `combustivel_valores`;
CREATE TABLE IF NOT EXISTS `combustivel_valores` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_COMBUSTIVEL` int(10) DEFAULT NULL,
  `CUSTO` decimal(10,2) DEFAULT NULL,
  `DATACUSTO` date DEFAULT NULL,
  `STATUS` int(11) DEFAULT '1',
  PRIMARY KEY (`AI`),
  KEY `FK_combustivel_valores_cad_combustivel` (`ID_COMBUSTIVEL`),
  CONSTRAINT `FK_combustivel_valores_cad_combustivel` FOREIGN KEY (`ID_COMBUSTIVEL`) REFERENCES `cad_combustivel` (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.configuracoes
DROP TABLE IF EXISTS `configuracoes`;
CREATE TABLE IF NOT EXISTS `configuracoes` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `GRUPO` varchar(30) DEFAULT NULL,
  `SESSAO` varchar(30) DEFAULT NULL,
  `IDENT` varchar(50) DEFAULT NULL,
  `VALOR` varchar(50) DEFAULT NULL,
  `TIPO` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.funcionarios_ausencias
DROP TABLE IF EXISTS `funcionarios_ausencias`;
CREATE TABLE IF NOT EXISTS `funcionarios_ausencias` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_CADGERAL` int(10) DEFAULT NULL,
  `TIPO` varchar(20) DEFAULT NULL,
  `DATAINI` date DEFAULT NULL,
  `DATAFIM` date DEFAULT NULL,
  `OBS` varchar(200) DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_funcionarios_ausencias_cad_geral` (`ID_CADGERAL`),
  CONSTRAINT `FK_funcionarios_ausencias_cad_geral` FOREIGN KEY (`ID_CADGERAL`) REFERENCES `cad_geral` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.nextnum
DROP TABLE IF EXISTS `nextnum`;
CREATE TABLE IF NOT EXISTS `nextnum` (
  `AI` int(11) NOT NULL AUTO_INCREMENT,
  `CAMPO` varchar(20) DEFAULT NULL,
  `CHAVE` varchar(10) DEFAULT '0000000000',
  PRIMARY KEY (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.oficios
DROP TABLE IF EXISTS `oficios`;
CREATE TABLE IF NOT EXISTS `oficios` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_LGN` varchar(10) DEFAULT NULL,
  `ID_DESTINATARIO` int(10) DEFAULT NULL,
  `ASSUNTO` varchar(100) DEFAULT NULL,
  `ID_SOLICITANTE` int(10) DEFAULT NULL,
  `OBS` varchar(200) DEFAULT NULL,
  `DATAOFICIO` date DEFAULT NULL,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  `USUARIO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_oficios_cad_geral_dest` (`ID_DESTINATARIO`),
  KEY `FK_oficios_cad_geral_solic` (`ID_SOLICITANTE`),
  CONSTRAINT `FK_oficios_cad_geral_dest` FOREIGN KEY (`ID_DESTINATARIO`) REFERENCES `cad_geral` (`AI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_oficios_cad_geral_solic` FOREIGN KEY (`ID_SOLICITANTE`) REFERENCES `cad_geral` (`AI`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.oficios_emails
DROP TABLE IF EXISTS `oficios_emails`;
CREATE TABLE IF NOT EXISTS `oficios_emails` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_LGN` int(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `ENVIADO` int(10) DEFAULT '1',
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_oficios_emails_oficios` (`ID_LGN`),
  CONSTRAINT `FK_oficios_emails_oficios` FOREIGN KEY (`ID_LGN`) REFERENCES `oficios` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.oficios_fotos
DROP TABLE IF EXISTS `oficios_fotos`;
CREATE TABLE IF NOT EXISTS `oficios_fotos` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_LGN` int(10) DEFAULT NULL,
  `LOCALARQUIVO` varchar(80) DEFAULT NULL,
  `FOTO` mediumblob,
  `DATAINC` date DEFAULT NULL,
  `HORAINC` time DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_oficios_fotos_oficios` (`ID_LGN`),
  CONSTRAINT `FK_oficios_fotos_oficios` FOREIGN KEY (`ID_LGN`) REFERENCES `oficios` (`AI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.permissoes
DROP TABLE IF EXISTS `permissoes`;
CREATE TABLE IF NOT EXISTS `permissoes` (
  `UCIdUser` int(11) DEFAULT NULL,
  `UCModule` varchar(50) DEFAULT NULL,
  `UCCompName` varchar(50) DEFAULT NULL,
  `UCKey` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.permissoesex
DROP TABLE IF EXISTS `permissoesex`;
CREATE TABLE IF NOT EXISTS `permissoesex` (
  `UCIdUser` int(11) DEFAULT NULL,
  `UCModule` varchar(50) DEFAULT NULL,
  `UCCompName` varchar(50) DEFAULT NULL,
  `UCFormName` varchar(50) DEFAULT NULL,
  `UCKey` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `UCIdUser` int(11) DEFAULT NULL,
  `UCUserName` varchar(30) DEFAULT NULL,
  `UCLogin` varchar(30) DEFAULT NULL,
  `UCPassword` varchar(250) DEFAULT NULL,
  `UCPASSEXPIRED` char(10) DEFAULT NULL,
  `UCUserExpired` int(11) DEFAULT NULL,
  `UCUserDaysSun` int(11) DEFAULT NULL,
  `UCEmail` varchar(150) DEFAULT NULL,
  `UCPrivileged` int(11) DEFAULT NULL,
  `UCTypeRec` char(1) DEFAULT NULL,
  `UCProfile` int(11) DEFAULT NULL,
  `UCKey` varchar(250) DEFAULT NULL,
  `UCInative` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.usuarios_log
DROP TABLE IF EXISTS `usuarios_log`;
CREATE TABLE IF NOT EXISTS `usuarios_log` (
  `APPLICATIONID` varchar(250) DEFAULT NULL,
  `IDUSER` int(11) DEFAULT NULL,
  `MSG` varchar(250) DEFAULT NULL,
  `DATA` varchar(14) DEFAULT NULL,
  `NIVEL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.usuarios_logados
DROP TABLE IF EXISTS `usuarios_logados`;
CREATE TABLE IF NOT EXISTS `usuarios_logados` (
  `UCIdLogon` char(38) DEFAULT NULL,
  `UCIdUser` int(11) DEFAULT NULL,
  `UCApplicationId` varchar(50) DEFAULT NULL,
  `UCMachineName` varchar(50) DEFAULT NULL,
  `UCData` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.usuarios_msg
DROP TABLE IF EXISTS `usuarios_msg`;
CREATE TABLE IF NOT EXISTS `usuarios_msg` (
  `IdMsg` int(11) DEFAULT NULL,
  `UsrFrom` int(11) DEFAULT NULL,
  `UsrTo` int(11) DEFAULT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `DtSend` varchar(12) DEFAULT NULL,
  `DtReceive` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for table lgn.veiculos_implementos
DROP TABLE IF EXISTS `veiculos_implementos`;
CREATE TABLE IF NOT EXISTS `veiculos_implementos` (
  `AI` int(10) NOT NULL AUTO_INCREMENT,
  `ID_AGENDA` int(10) DEFAULT NULL,
  `ID_IMPLEMENTO` int(10) DEFAULT NULL,
  PRIMARY KEY (`AI`),
  KEY `FK_veiculos_implementos_cad_implementos` (`ID_IMPLEMENTO`),
  KEY `FK_veiculos_implementos_agenda` (`ID_AGENDA`),
  CONSTRAINT `FK_veiculos_implementos_agenda` FOREIGN KEY (`ID_AGENDA`) REFERENCES `agenda_tratores` (`AI`),
  CONSTRAINT `FK_veiculos_implementos_cad_implementos` FOREIGN KEY (`ID_IMPLEMENTO`) REFERENCES `cad_implementos` (`AI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Data exporting was unselected.


# Dumping structure for trigger lgn.trg_bi_data_hora_agenda
DROP TRIGGER IF EXISTS `trg_bi_data_hora_agenda`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_agenda` BEFORE INSERT ON `agenda` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_alunos_atividades
DROP TRIGGER IF EXISTS `trg_bi_data_hora_alunos_atividades`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_alunos_atividades` BEFORE INSERT ON `alunos_atividades` FOR EACH ROW BEGIN
	SET NEW.DATAINC 	  = NOW();
	SET NEW.DATAATIVINI = NOW();
	SET NEW.DATAATIVFIM = NOW();
	SET NEW.DATAAGEINI  = NOW();
	SET NEW.DATAAGEFIM  = NOW();
	SET NEW.HORAINC     = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_cad_agenciafinanciadora
DROP TRIGGER IF EXISTS `trg_bi_data_hora_cad_agenciafinanciadora`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_cad_agenciafinanciadora` BEFORE INSERT ON `cad_agenciafinanciadora` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_cad_atividades
DROP TRIGGER IF EXISTS `trg_bi_data_hora_cad_atividades`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_cad_atividades` BEFORE INSERT ON `cad_atividades` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_cad_emails
DROP TRIGGER IF EXISTS `trg_bi_data_hora_cad_emails`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_cad_emails` BEFORE INSERT ON `cad_emails` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_cad_enderecos
DROP TRIGGER IF EXISTS `trg_bi_data_hora_cad_enderecos`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_cad_enderecos` BEFORE INSERT ON `cad_enderecos` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_cad_geral
DROP TRIGGER IF EXISTS `trg_bi_data_hora_cad_geral`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_cad_geral` BEFORE INSERT ON `cad_geral` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_cad_telefones
DROP TRIGGER IF EXISTS `trg_bi_data_hora_cad_telefones`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_cad_telefones` BEFORE INSERT ON `cad_telefones` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_funcionarios_ausencias
DROP TRIGGER IF EXISTS `trg_bi_data_hora_funcionarios_ausencias`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_funcionarios_ausencias` BEFORE INSERT ON `funcionarios_ausencias` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_oficios
DROP TRIGGER IF EXISTS `trg_bi_data_hora_oficios`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_oficios` BEFORE INSERT ON `oficios` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_oficios_emails
DROP TRIGGER IF EXISTS `trg_bi_data_hora_oficios_emails`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_oficios_emails` BEFORE INSERT ON `oficios_emails` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;


# Dumping structure for trigger lgn.trg_bi_data_hora_oficios_fotos
DROP TRIGGER IF EXISTS `trg_bi_data_hora_oficios_fotos`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_bi_data_hora_oficios_fotos` BEFORE INSERT ON `oficios_fotos` FOR EACH ROW BEGIN
	SET NEW.DATAINC = NOW();
	SET NEW.HORAINC = NOW();
END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
