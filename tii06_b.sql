-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/06/2024 às 22:06
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
-- Banco de dados: `tii06_b`
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
