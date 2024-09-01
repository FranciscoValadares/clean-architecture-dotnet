-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: database_src
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `conselheiro`
--

DROP TABLE IF EXISTS `conselheiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conselheiro` (
  `id_conselheiro` int NOT NULL AUTO_INCREMENT COMMENT 'Campo, chave primaria, para identificar o conselheiro que foi cadastrado.',
  `nm_conselheiro` varchar(255) NOT NULL COMMENT 'Nome que o conselheiro terá.',
  `vl_pontuacao_conselheiro` int NOT NULL DEFAULT '0' COMMENT 'Valor da pontuação que o conselheiro adriu.',
  `situacao` tinyint(1) DEFAULT '1' COMMENT 'As duas primeira situações possiveis são {Inativo = 0, Ativo=1, Excluido=2}',
  `tx_uf` varchar(100) NOT NULL COMMENT 'Sigla UF/ Regional do conselheiro',
  PRIMARY KEY (`id_conselheiro`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conselheiro`
--

LOCK TABLES `conselheiro` WRITE;
/*!40000 ALTER TABLE `conselheiro` DISABLE KEYS */;
INSERT INTO `conselheiro` VALUES (1,'Carlos Henrique do Nascimento',0,1,''),(2,'Andrezza Carolina Brito Farias',0,1,''),(3,'Wellington do Carmo Cruz',0,0,''),(4,'Luana Aguiar Pinheiro Soares',0,0,''),(5,'Haroldo Santos Filho',0,0,''),(6,'Rangel Francisco Pinto',0,0,''),(7,'Heraldo de Jesus Campelo',0,0,''),(8,'Gercimira Ramos Moreira Rezende',0,0,''),(9,'Brunno Sitônio Fialho de Oliveira',999999,0,''),(10,'Joaquim de Alencar Bezerra Filho',0,0,''),(11,'Aguinaldo Mocelin',101010,0,''),(12,'Maria do Rosario de Oliveira',0,0,''),(13,'José Domingos Filho',0,0,''),(14,'Ana Tércia Lopes Rodrigues',0,0,''),(15,'Sergio Faraco',0,0,''),(16,'Aécio Prado Dantas Júnior',123123,0,''),(17,'José Donizete Valentina',0,0,''),(18,'Sebastião Célio Costa Castro',0,0,''),(19,'Mateus Nascimento Calegari',0,0,''),(20,'Manoel Carlos de Oliveira Júnior',0,0,''),(21,'Sandra Maria de Carvalho Campos',0,0,''),(22,'Carlos Rubens de Oliveira',0,0,''),(23,'Ticiane Lima dos Santos',0,0,''),(24,'José Gonçalves Campos Filho',0,0,''),(25,'Vitória Maria da Silva',0,0,''),(26,'Palmira Leão de Souza',0,0,''),(27,'José Alberto Viana Gaia',0,0,''),(28,'Fabiano Ribeiro Pimentel',0,0,''),(29,'Sônia Maria da Silva Gomes',0,0,''),(30,'Liliana Farias Lacerda',0,0,''),(31,'Roberto Schulze',0,0,''),(32,'Weberth Fernandes',0,0,''),(33,'Nilton Luiz Lima Praseres',0,0,''),(34,'Aloísio Rodrigues da Silva',3,0,''),(35,'Glaydson Trajano Farias',0,0,''),(36,'Elias Dib Caddah Neto',0,0,''),(37,'Maurício Gilberto Cândido',0,0,''),(38,'Erivan Ferreira Borges',0,0,''),(39,'Edneu da Silva Calderari',0,0,''),(40,'Mônica Foerster',0,0,''),(41,'Marlise Alves Silva Teixeira',0,0,''),(42,'Angela Andrade Dantas Mendonça',0,0,''),(43,'Valmir Leôncio da Silva',0,0,''),(44,'Norton Thomazi',0,0,''),(45,'Cil Farney Assis Rodrigues',0,0,''),(46,'Lucilene Florêncio Viana',0,0,''),(47,'Leonardo Silveira do Nascimento',0,0,''),(48,'Antônio de Pádua Soares Pelicarpo',0,0,''),(49,'Arleon Carlos Stelini',0,0,''),(50,'Antonio Carlos Sales Ferreira Junior',0,0,''),(51,'Geraldo de Paula Batista Filho',0,0,''),(52,'Ana Luiza Pereira Lima',0,0,''),(53,'Francisco Fernandes de Oliveira',0,0,''),(54,'NOCO VONLHESEIRO',0,0,'');
/*!40000 ALTER TABLE `conselheiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `id_evento` int NOT NULL AUTO_INCREMENT COMMENT 'Campo, chave primaria, para identificar o evento.',
  `nm_evento` varchar(255) NOT NULL COMMENT 'Nome que o evento terá.',
  `tp_evento` varchar(255) NOT NULL COMMENT 'Definindo um tipo para o evento.',
  `dt_evento` date NOT NULL COMMENT 'A data que determinara o evento. ',
  `vl_pontuacao_do_evento` int NOT NULL DEFAULT '0' COMMENT 'Valor da pontuação que o conselheiro adriu.',
  `id_tipo_evento` int NOT NULL,
  `qt_vagas` int DEFAULT NULL COMMENT 'Quantitativo de vagas que o evento comporta.',
  `sg_uf_local_evento` varchar(100) DEFAULT NULL COMMENT 'Campo que define o estado onde o evento plenário acontecerá.',
  PRIMARY KEY (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Essa tabela pode conter eventos do tipo reunião, evento, trabalhos, etc.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'teste','Reunião do Conselho Diretor do CFC','2024-05-28',0,0,NULL,NULL),(2,'TESTETESTETESTE','Reunião Plenária - CRC','2121-12-12',0,0,NULL,NULL),(3,'Adicionando evento','Reunião Plenária - CRC','2024-07-08',0,0,NULL,NULL),(4,'Adicionando Outro Evento','Reunião de Comissão ou Grupo de Trabalho ou Reunião de natureza técnica e/ou institucional, representando o CFC','2024-07-09',0,0,NULL,NULL);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extrato_anual_por_mes`
--

DROP TABLE IF EXISTS `extrato_anual_por_mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extrato_anual_por_mes` (
  `id_ranqueamento` int NOT NULL AUTO_INCREMENT COMMENT 'Campo, chave primaria, para identificar a posição onde o conselheiro se encontra.',
  `vl_pontuacao_conselheiro` int NOT NULL DEFAULT '0' COMMENT 'Valor da pontuação que o conselheiro adriu.',
  `dt_ranqueamento` varchar(255) NOT NULL COMMENT 'A data que determinara quando o reanqueamento foi criado. ',
  `nm_evento` varchar(255) NOT NULL COMMENT 'Nome que o evento terá.',
  `id_conselheiro` int NOT NULL COMMENT 'Referências para a tabelas de conselheiros',
  PRIMARY KEY (`id_ranqueamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extrato_anual_por_mes`
--

LOCK TABLES `extrato_anual_por_mes` WRITE;
/*!40000 ALTER TABLE `extrato_anual_por_mes` DISABLE KEYS */;
/*!40000 ALTER TABLE `extrato_anual_por_mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extrato_potuacao_conselheiros_mes_ano`
--

DROP TABLE IF EXISTS `extrato_potuacao_conselheiros_mes_ano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extrato_potuacao_conselheiros_mes_ano` (
  `id_extrato_pontuacao` int NOT NULL AUTO_INCREMENT COMMENT 'Pontuação de Conselheiros - Fevereiro/2023',
  PRIMARY KEY (`id_extrato_pontuacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Pontuação de Conselheiros - Fevereiro/2023';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extrato_potuacao_conselheiros_mes_ano`
--

LOCK TABLES `extrato_potuacao_conselheiros_mes_ano` WRITE;
/*!40000 ALTER TABLE `extrato_potuacao_conselheiros_mes_ano` DISABLE KEYS */;
/*!40000 ALTER TABLE `extrato_potuacao_conselheiros_mes_ano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestor`
--

DROP TABLE IF EXISTS `gestor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestor` (
  `id_gestor` int NOT NULL AUTO_INCREMENT COMMENT 'Campo, chave primaria, para identificar o perfil gestor.',
  `nm_gestor` varchar(255) NOT NULL COMMENT 'Nome que o usuario terá.',
  `tx_email_gestor` varchar(255) NOT NULL COMMENT 'Email que o usuario terá.',
  `bn_senha_gestor` varchar(255) NOT NULL COMMENT 'Senha que o usuario terá.',
  PRIMARY KEY (`id_gestor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestor`
--

LOCK TABLES `gestor` WRITE;
/*!40000 ALTER TABLE `gestor` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participacao`
--

DROP TABLE IF EXISTS `participacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participacao` (
  `id_participacao` int NOT NULL AUTO_INCREMENT COMMENT 'Campo, chave primaria, para identificar a participação do conselheiro que foi cadastrado.',
  `id_conselheiro` int NOT NULL COMMENT 'Campo, chave primaria, para identificar o conselheiro que foi cadastrado.',
  `id_evento` int NOT NULL COMMENT 'Campo, chave primaria, para identificar o evento.',
  PRIMARY KEY (`id_participacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participacao`
--

LOCK TABLES `participacao` WRITE;
/*!40000 ALTER TABLE `participacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `participacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pontuacao_acumulada`
--

DROP TABLE IF EXISTS `pontuacao_acumulada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pontuacao_acumulada` (
  `id_pontuacao` int NOT NULL AUTO_INCREMENT COMMENT 'Campo, chave primaria, para identificar a pontuação que o evento terá.',
  `nm_conselheiro` varchar(255) NOT NULL COMMENT 'Nome que o conselheiro terá.',
  `vl_soma_pontuacao` int NOT NULL DEFAULT '0' COMMENT 'Valor do somatório de pontuação que o conselheiro possui.',
  `id_conselheiro` int NOT NULL COMMENT 'Referência para a tabela conselheiro',
  `vl_ano` int NOT NULL COMMENT 'Ano da pontuação acumulada',
  `nm_mes` enum('JANEIRO','FEVEREIRO','MARÇO','ABRIL','MAIO','JUNHO','JULHO','AGOSTO','SETEMBRO','OUTUBRO','NOVEMBRO','DEZEMBRO') NOT NULL,
  PRIMARY KEY (`id_pontuacao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pontuacao_acumulada`
--

LOCK TABLES `pontuacao_acumulada` WRITE;
/*!40000 ALTER TABLE `pontuacao_acumulada` DISABLE KEYS */;
INSERT INTO `pontuacao_acumulada` VALUES (1,'Carlos Henrique do Nascimento',1,0,0,'JANEIRO'),(2,'Andrezza Carolina Brito Farias',1,0,0,'JANEIRO');
/*!40000 ALTER TABLE `pontuacao_acumulada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_historico_conselheiro`
--

DROP TABLE IF EXISTS `tabela_historico_conselheiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_historico_conselheiro` (
  `id_tabela_historico_conselheiro` int NOT NULL AUTO_INCREMENT COMMENT 'Campo, chave primaria, para identificar a tabela do conselheiro se encontra.',
  `vl_pontuacao_conselheiro` int NOT NULL DEFAULT '0' COMMENT 'Valor da pontuação que o conselheiro adriu.',
  `nm_conselheiro` varchar(255) NOT NULL COMMENT 'Nome que o conselheiro terá.',
  `dt_tabela_conselheiro` varchar(255) NOT NULL COMMENT 'A data que determinara a criação da tabela conselheiro. ',
  `id_conselheiro` int DEFAULT NULL COMMENT 'Coluna chave estrangéira referente a tabela conselheiro',
  PRIMARY KEY (`id_tabela_historico_conselheiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_historico_conselheiro`
--

LOCK TABLES `tabela_historico_conselheiro` WRITE;
/*!40000 ALTER TABLE `tabela_historico_conselheiro` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabela_historico_conselheiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_evento`
--

DROP TABLE IF EXISTS `tipo_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_evento` (
  `id_tipo_evento` int NOT NULL AUTO_INCREMENT COMMENT 'Campo, chave primaria, para identificar o tipo do evento.',
  `nm_tipo_evento` varchar(255) NOT NULL COMMENT 'Definindo um tipo para o evento.',
  `vl_pontuacao_tipo_evento` int NOT NULL DEFAULT '0' COMMENT 'Valor da pontuação para esse tipo de evento.',
  `vt_pontuacao_maxima_por_mes` int DEFAULT NULL COMMENT 'Limite de pontuação máximo por mês',
  `nm_condicionante` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Condicionante ex: Designação e/ou autorização do CFC, Convocação',
  PRIMARY KEY (`id_tipo_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_evento`
--

LOCK TABLES `tipo_evento` WRITE;
/*!40000 ALTER TABLE `tipo_evento` DISABLE KEYS */;
INSERT INTO `tipo_evento` VALUES (1,'Reunião Plenária',1,NULL,NULL),(2,'Reunião Plenária - CRC',1,NULL,NULL),(3,'Reunião do Tribunal Superior de Ética e Disciplina',1,NULL,NULL),(4,'Reunião do Conselho Diretor do CFC',1,NULL,NULL),(5,'Reunião de Câmara do CFC, exceto da Câmara de Fiscalização, Ética e Disciplina',1,NULL,NULL),(6,'Reunião da Câmara de Fiscalização, Ética e Disciplina',2,NULL,NULL),(7,'Reunião de Comissão ou Grupo de Trabalho ou Reunião de natureza técnica e/ou institucional, representando o CFC',1,NULL,NULL),(8,'Trabalho Técnico apresentado em evento do Calendário Oficial',5,NULL,NULL),(9,'Artigo publicado na RBC ou em revista técnica de Contabilidade',5,NULL,NULL),(10,'Palestrante/painelista em evento do Calendário Oficial e/ou evento de interesse da Classe Contábil',5,NULL,NULL),(11,'Moderador/debatedor em evento do Calendário Oficial e/ou evento de interesse da Classe Contábil',2,NULL,NULL),(12,'Treinamento no CFC ou nos CRCs, como instrutor',5,NULL,NULL),(13,'Participação aprovada em evento nacional',-10,NULL,NULL),(14,'Participação aprovada em evento internacional',-20,NULL,NULL),(15,'Representação da Presidência em evento',2,NULL,NULL);
/*!40000 ALTER TABLE `tipo_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT COMMENT 'Campo, chave primaria, para identificar o usario.',
  `tx_emai_usuario` varchar(255) NOT NULL COMMENT 'Email que o usuario terá.',
  `bn_senha_usuario` varchar(255) NOT NULL COMMENT 'Senha que o usuario terá.',
  `nm_usuario` varchar(255) NOT NULL COMMENT 'Nome que o usuario terá.',
  `adm_usuario` int NOT NULL COMMENT 'Determina o tipo de usuario sendo ele administrador ou gestor.',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'teste@teste.com','teste','teste',0),(2,'admin@admin.com','admin','admin',1),(3,'denise.silva@cfc.org.br','admin','denise.silva',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'database_src'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-19 12:39:31
