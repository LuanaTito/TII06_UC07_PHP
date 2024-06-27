-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/06/2024 às 22:02
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojatech`
--
CREATE DATABASE IF NOT EXISTS `lojatech` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lojatech`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_cat` int(11) NOT NULL,
  `nome_categoria` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_cat`, `nome_categoria`) VALUES
(1, 'Desktops'),
(2, 'Notebooks'),
(3, 'Smartphones'),
(4, 'Eletronicos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `data_compra` date DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_end` int(11) NOT NULL,
  `rua` varchar(150) DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `bairro` varchar(150) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imagem`
--

CREATE TABLE `imagem` (
  `id_imagem` int(11) NOT NULL,
  `nome_imagem` varchar(150) DEFAULT NULL,
  `status_imagem` tinyint(4) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(100) DEFAULT NULL,
  `descricao_produto` text DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome_produto`, `descricao_produto`, `valor`, `id_cat`) VALUES
(1, 'Samsung A54', 'Samsung A54  Samsung A54 Samsung A54 Samsung A54', 3000, 3),
(2, 'TV LG', 'TV LG Fullhd', 3500, 4),
(3, 'Samsung A23', 'Samsung A23 Samsung A23 Samsung A23 Samsung A23', 3600, 3),
(4, 'Notebook 15.6', 'Notebook 15.6 Notebook 15.6 Notebook 15.6 Notebook 15.6', 5500, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `senha` varchar(60) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `email`, `senha`, `cpf`) VALUES
(1, 'Lilia', 'liliapds@gmail.com', '$2y$10$.vGA1O9wmRjrwAVXD98HNOgsNpDczlqm3Jq7KnEd1rVAGv3Fykk1a', '30963566881');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices de tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_end`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `imagem`
--
ALTER TABLE `imagem`
  ADD PRIMARY KEY (`id_imagem`);

--
-- Índices de tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_end` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imagem`
--
ALTER TABLE `imagem`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"tii06_b\",\"table\":\"teste\"},{\"db\":\"tii06_b\",\"table\":\"tb_contato\"},{\"db\":\"tii06\",\"table\":\"teste_contato\"},{\"db\":\"titus\",\"table\":\"game\"},{\"db\":\"lojatech\",\"table\":\"categoria\"},{\"db\":\"lojatech\",\"table\":\"usuario\"},{\"db\":\"lojatech\",\"table\":\"produto\"},{\"db\":\"lojatech\",\"table\":\"imagem\"},{\"db\":\"lojatech\",\"table\":\"endereco\"},{\"db\":\"lojatech\",\"table\":\"compra\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-06-27 20:01:47', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt_BR\",\"ThemeDefault\":\"pmahomme\",\"Console\\/Height\":287.971,\"Console\\/StartHistory\":true}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Banco de dados: `tii06`
--
CREATE DATABASE IF NOT EXISTS `tii06` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tii06`;
--
-- Banco de dados: `tii06_b`
--
CREATE DATABASE IF NOT EXISTS `tii06_b` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tii06_b`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_contato`
--

CREATE TABLE `tb_contato` (
  `id_contato` int(4) NOT NULL,
  `nome_contato` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_contato`
--

INSERT INTO `tb_contato` (`id_contato`, `nome_contato`, `email`, `titulo`, `mensagem`, `data`) VALUES
(1, 'Luana', 'luana@gmail.com', 'Reclamação', 'Não gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\n\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta. ÚLTUMA LINHA.', '2024-06-27 19:55:35'),
(2, 'João', 'joao@gmail.com', 'Elogio', 'Parabéns pelo ótimo atendimento!', '2024-06-27 20:03:25'),
(3, 'Maria', 'maria@gmail.com', 'Reclamação', 'Não gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.', '2024-06-27 20:05:23'),
(27, 'Joana', 'joana@gmail.com', 'Reclamação', 'Não gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.', '2024-06-27 20:10:31'),
(28, 'Luana', 'luana@gmail.com', 'Reclamação', 'Não gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\n\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta.\r\nNão gostei do atendimento oferecido pela equipe. Gostaria do meu dinheiro de volta. ÚLTUMA LINHA.', '2024-06-27 19:55:35');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  ADD PRIMARY KEY (`id_contato`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  MODIFY `id_contato` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Banco de dados: `titus`
--
CREATE DATABASE IF NOT EXISTS `titus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `titus`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `descricao` text NOT NULL,
  `resposta` varchar(200) NOT NULL,
  `iniciais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `game`
--

INSERT INTO `game` (`id`, `nome`, `descricao`, `resposta`, `iniciais`) VALUES
(1, '24 H no D', '', '$2y$10$bBMz8vweoJy3ZZeB0KiJW.msymRaFTGwLN/8mXYrqULRAf2HWOlEO', ''),
(2, '26 L no A', '', '$2y$10$VqQSGKwHRYg097fe24kaduXf6QXOBnfwcJZX8.zEAYy7u.Xr53ghO', ''),
(3, '7 D na S', '', '$2y$10$nmLkCq/MXoERdVg57wxZUeTSXSe/NMTN.32RgfiJLsgEwswZke99.', ''),
(4, '7 M do M', '', '$2y$10$xPFKoL8WWX4Ik2YIj0p4NeVHLmA0IoYCoMQxdN3KPNXW5gV4mvJeK', ''),
(5, 'R da T: 23 H 56 M 4 S', '', '$2y$10$PHsFxrmKOp66l69OgOsgzepVqVlUTX5UJ4k1LGSbo/jNplBA.lXdC', ''),
(6, '66 L da B', '', '$2y$10$C/f6.23e5uvfLWCQC/Z.euDD7/n2NUDNn6hM3AXJ/addVbUISENbi', ''),
(7, '52 C num B (S os C)', '', '$2y$10$6lPW5jb9H8GiJ2/AdiglUOvPn.fHFJEnEzuRLF.h6RKsp/aZih.wO', ''),
(8, '4 C na B B', '', '$2y$10$XkkpdWXtcqtU2Jf37hWETup5zhxDC8NsYgdb28K58W6hdjoGhcSO6', ''),
(9, '18 B num C de G', '', '$2y$10$j6rJMsOa3kv0CdAhArPF3u8ykA2LO3DOsP2DRJuXY4ZtQnN4v.MmC', ''),
(10, '39 L no V T da B', '', '$2y$10$LFJptm.m4NMgRCNTdauoweVBtyP2mrnOtQXM3iYtIkXaHob7Uww0i', ''),
(11, '5 D em um P', '', '$2y$10$ou2.xHNMoMtSkqF8X7oYQO20ux4GWdJgymTQKCFiclqsoCK7fq3T2', ''),
(12, 'Um Â R tem 90 G', '', '$2y$10$2xq1gJfF9pKDz/PsDR3/6u4ZhnQ7IOrYHIK75GZDh1F2a/ahoqVCe', ''),
(13, 'A Á C a 0 G C', '', '$2y$10$3eQ5yL5X8inFpDO8SLDHfucCxTsW/Dek7HXAudOAoca52mJDhd2NW', ''),
(14, '6 C em uma M de S', '', '$2y$10$O7cOz65/yhhi9ZETmMs6W.GTuzhVXazpjadVfu0yNrXk/.gLBQtHy', ''),
(15, 'T: P de 3 L', '', '$2y$10$x3BnccoY.3HAz4/HTehdUeF5L4HFiqBsJNqQgk4Hgx.LUlOxvduzK', ''),
(16, '26 E B e um D F', '', '$2y$10$dbk2KFDHg.62JCA5QvuB2elFbcQHkzBWq9bOnX.PvF9BE46NXSN1W', ''),
(17, '11 J em um T de F', '', '$2y$10$RTUGc2tMDxUZmnTragq3EuCj6DH7SCkfoIpgS7fU5yCgaS8Eanie.', ''),
(18, '12 M no A', '', '$2y$10$YjGQcp5rwM2ndDASQtDRz.R94K4Uu/lK3EgdwXaBcWKfAMW1fVrVi', ''),
(19, '8 é a R Q de 64', '', '$2y$10$V.Lu5l048sDQAfebXYl8/eZEhCIdUwCQcY7735TI8ucacDDddtWh2', ''),
(20, '366 D em um A B', '', '$2y$10$n4s3wjLXdZX45il2RgcbDezudnj5k0kEiPZugLxPWbW9Wa1RoS23q', ''),
(21, '27 L no N T B', '', '$2y$10$uXs1l2cSIa3ftmVpQFMPVO7IHeD2XQwUWb/zJovQ.hFigiXVdiz8i', ''),
(22, '365 D no A', '', '$2y$10$l1oJv3FJkKp0kGnMgPOdAOfks8h..O2WSynz3GW3ucVOGzxnrjcfe', ''),
(23, '10 D em 1 M', '', '$2y$10$uOGSIhrBIwUmMOEhKRRAx.zjAOSKdcFUIkEjrH73nZiF4S0ZbHAn.', ''),
(24, 'C E 2 D: 0 e 1', '', '$2y$10$AzAU1ZYhuryR2GT8aDZQB.ucrhYyqdCIVAnxPmH2XmQ46A7kK3Jhi', ''),
(25, '1 G tem 7 V', '', '$2y$10$Y7t1Epjk0LEBwSdmoTSJsOu18POXlREAgtEaZNRIIjS91gRnvbIRe', ''),
(26, '60 M N H', '', '$2y$10$jKYB5TTeBwrW7o/.ZXojH.dm71Vir2un8ypMrU1ZfMg8ncTi.sKFi', ''),
(27, '25 V 25 R em 625', '', '$2y$10$J7i7iDKibIs.9rCRF.0zuOI1RSkwLWLSELN9R9pbl4TA8/ywAG5VO', ''),
(28, '4 E no S do B', '', '$2y$10$GbRJVHF/gyq.eNUBfzxFS.bKRAkhDrtmRiKEhw.ibxjs8lnwJzM4O', ''),
(29, '1 B B em um J de S', '', '$2y$10$DHfpsypFU2jTyYFH4PsGG.50j0xf5vmFBtJejOGCloiRW2dvTGY8q', ''),
(30, 'U M C 1000 A', '', '$2y$10$CvtvXXF.kperRN6coGK4aOe9wNEZPDZbmv5ctdraYsYlFtk52MCmO', ''),
(31, 'U D tem 12 U', '', '$2y$10$pe..OkAHJUTt6DnD4JOrReZQAU131lpPbRgNNgd/vh5LPmCM6Rxiy', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
