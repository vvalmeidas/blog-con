-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 28-Ago-2020 às 12:37
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `blog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `post_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_post` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `author`, `email`, `content`, `created_at`, `post_id`) VALUES
(1, 'vggvdsgvdafgvdgvdfsgvvggvdsgvdafgvdgvdfsgvvggvdsgvdafgvdgvdfsgvvggvdsgvdafgvdgvdfsgvvggvdsgvdafgvdgv', 'vvalmeida96@gmail.com', 'bncxnnmjghghjhgjhgjhgjhhjjghf', '28/08/2020', 1),
(2, 'fhghgfghfhgfhgfghf', 'vvalmeida96@gmail.com', 'sdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdgfdgdfsdsggdfsdffsdfgdg', '28/08/2020', 1),
(3, 'VALMIR VINICIUS DE A SANTO', 'vvalmeida96@gmail.com', 'fhgfghhghfhggfhgh', '28/08/2020', 2),
(4, 'Valmir', 'vvalmeida96@gmail.com', 'Teste teste teste', '28/08/2020', 13),
(5, 'Teste', 'teste@email.com', 'Testando', '28/08/2020', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_migration`
--

DROP TABLE IF EXISTS `tbl_migration`;
CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1598612672),
('m200828_102625_create_posts_table', 1598612675),
('m200828_104114_create_comments_table', 1598612675),
('m200828_104430_create_user_table', 1598612675);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_posts`
--

DROP TABLE IF EXISTS `tbl_posts`;
CREATE TABLE IF NOT EXISTS `tbl_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` int(10) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `category` enum('1','2','3','4','5','6') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_author` (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title`, `content`, `author_id`, `created_at`, `category`) VALUES
(8, 'Teste', 'Conteúdo Teste', 1, '28/08/2020', '1'),
(9, 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus mauris justo, mollis in convallis vel, varius sit amet libero. Vivamus aliquam, leo eu fermentum efficitur, mauris felis molestie nulla, non vulputate turpis mi et urna. Pellentesque at nibh nibh. Nullam eget lectus tellus. Ut lacus turpis, rutrum vitae ex id, imperdiet placerat nibh. Vestibulum turpis enim, consequat quis ullamcorper a, condimentum ac diam. Nulla luctus mattis sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam hendrerit vestibulum ligula sed porttitor. Vestibulum a bibendum risus. Donec ultrices cursus ante a consequat.\r\n\r\nAenean fringilla, risus a ullamcorper porta, mi ligula placerat massa, et dignissim nunc turpis nec odio. Nullam euismod nibh vitae ultrices lacinia. Praesent mattis interdum nunc non lobortis. Donec nisi lectus, convallis vel dictum ullamcorper, tincidunt ac lorem. Proin gravida lorem vel sapien molestie, at placerat dolor molestie. Sed venenatis et arcu sed malesuada. Donec sit amet mauris in massa ullamcorper cursus. Sed tincidunt congue nulla vitae euismod. Nunc placerat, massa vel faucibus tempus, lorem tellus faucibus ante, nec dignissim orci enim quis velit. Curabitur malesuada purus a felis mollis, in ultrices velit faucibus. Maecenas sed elit in risus condimentum accumsan. Sed at mauris feugiat, placerat ante vestibulum, mollis justo. Nullam cursus ut nisl et iaculis. Duis eget posuere sapien. Phasellus ac euismod tortor. Aliquam consequat magna ac volutpat varius.\r\n\r\nPhasellus convallis quam pharetra mattis molestie. Nam tristique purus quis ante ultricies, ut euismod neque tincidunt. Ut faucibus semper lectus, quis suscipit est tempor at. Cras in sapien ultrices sem rhoncus cursus. Vestibulum tincidunt consequat cursus. Integer vel sapien nec dolor commodo egestas. Praesent ultrices sed nunc sed scelerisque. In finibus nisl at felis congue, ut ultricies tellus varius. Donec sed augue non risus suscipit auctor vel vitae justo. Phasellus imperdiet volutpat dignissim.\r\n\r\nSuspendisse potenti. Fusce consectetur pellentesque lorem a auctor. Duis elit est, facilisis vitae ex et, consequat volutpat turpis. Phasellus vitae felis magna. Sed turpis orci, ultricies id vestibulum sit amet, rutrum vitae dolor. Nam dignissim massa vel consequat tempus. Praesent rutrum, nibh ut faucibus molestie, nulla turpis vulputate orci, at dapibus est dolor id nulla. Curabitur molestie tortor ut velit cursus, iaculis maximus tortor blandit. Nam molestie quis est a dignissim. Fusce felis leo, viverra et varius eget, vehicula at nunc.\r\n\r\nVivamus sit amet ligula eget erat auctor egestas vel eget felis. Etiam commodo ipsum facilisis tincidunt vestibulum. Aliquam ac vulputate ligula, et porttitor purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis feugiat ultrices justo, id bibendum arcu tempor eget. Ut sollicitudin in nulla tincidunt placerat. Nulla posuere sapien lectus, vulputate auctor erat sodales eget. Curabitur nibh turpis, hendrerit eu ornare vel, aliquet vel justo. Curabitur posuere dui quis massa bibendum, sed dapibus felis interdum. Morbi faucibus ullamcorper faucibus. Cras laoreet, neque vel sollicitudin placerat, erat lacus varius dui, vitae pretium arcu neque a libero. Sed luctus augue ut ante euismod sollicitudin. Quisque sit amet tellus at ex ultricies molestie. Ut porttitor egestas sem vel porttitor. Vivamus volutpat lobortis elit, eget consectetur purus tempus vitae. Vivamus tincidunt libero ac consectetur hendrerit.\r\n\r\n', 1, '28/08/2020', '5'),
(10, 'Lorem 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus mauris justo, mollis in convallis vel, varius sit amet libero. Vivamus aliquam, leo eu fermentum efficitur, mauris felis molestie nulla, non vulputate turpis mi et urna. Pellentesque at nibh nibh. Nullam eget lectus tellus. Ut lacus turpis, rutrum vitae ex id, imperdiet placerat nibh. Vestibulum turpis enim, consequat quis ullamcorper a, condimentum ac diam. Nulla luctus mattis sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam hendrerit vestibulum ligula sed porttitor. Vestibulum a bibendum risus. Donec ultrices cursus ante a consequat.\r\n\r\nAenean fringilla, risus a ullamcorper porta, mi ligula placerat massa, et dignissim nunc turpis nec odio. Nullam euismod nibh vitae ultrices lacinia. Praesent mattis interdum nunc non lobortis. Donec nisi lectus, convallis vel dictum ullamcorper, tincidunt ac lorem. Proin gravida lorem vel sapien molestie, at placerat dolor molestie. Sed venenatis et arcu sed malesuada. Donec sit amet mauris in massa ullamcorper cursus. Sed tincidunt congue nulla vitae euismod. Nunc placerat, massa vel faucibus tempus, lorem tellus faucibus ante, nec dignissim orci enim quis velit. Curabitur malesuada purus a felis mollis, in ultrices velit faucibus. Maecenas sed elit in risus condimentum accumsan. Sed at mauris feugiat, placerat ante vestibulum, mollis justo. Nullam cursus ut nisl et iaculis. Duis eget posuere sapien. Phasellus ac euismod tortor. Aliquam consequat magna ac volutpat varius.\r\n\r\nPhasellus convallis quam pharetra mattis molestie. Nam tristique purus quis ante ultricies, ut euismod neque tincidunt. Ut faucibus semper lectus, quis suscipit est tempor at. Cras in sapien ultrices sem rhoncus cursus. Vestibulum tincidunt consequat cursus. Integer vel sapien nec dolor commodo egestas. Praesent ultrices sed nunc sed scelerisque. In finibus nisl at felis congue, ut ultricies tellus varius. Donec sed augue non risus suscipit auctor vel vitae justo. Phasellus imperdiet volutpat dignissim.\r\n\r\nSuspendisse potenti. Fusce consectetur pellentesque lorem a auctor. Duis elit est, facilisis vitae ex et, consequat volutpat turpis. Phasellus vitae felis magna. Sed turpis orci, ultricies id vestibulum sit amet, rutrum vitae dolor. Nam dignissim massa vel consequat tempus. Praesent rutrum, nibh ut faucibus molestie, nulla turpis vulputate orci, at dapibus est dolor id nulla. Curabitur molestie tortor ut velit cursus, iaculis maximus tortor blandit. Nam molestie quis est a dignissim. Fusce felis leo, viverra et varius eget, vehicula at nunc.\r\n\r\nVivamus sit amet ligula eget erat auctor egestas vel eget felis. Etiam commodo ipsum facilisis tincidunt vestibulum. Aliquam ac vulputate ligula, et porttitor purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis feugiat ultrices justo, id bibendum arcu tempor eget. Ut sollicitudin in nulla tincidunt placerat. Nulla posuere sapien lectus, vulputate auctor erat sodales eget. Curabitur nibh turpis, hendrerit eu ornare vel, aliquet vel justo. Curabitur posuere dui quis massa bibendum, sed dapibus felis interdum. Morbi faucibus ullamcorper faucibus. Cras laoreet, neque vel sollicitudin placerat, erat lacus varius dui, vitae pretium arcu neque a libero. Sed luctus augue ut ante euismod sollicitudin. Quisque sit amet tellus at ex ultricies molestie. Ut porttitor egestas sem vel porttitor. Vivamus volutpat lobortis elit, eget consectetur purus tempus vitae. Vivamus tincidunt libero ac consectetur hendrerit.', 1, '28/08/2020', '1'),
(11, 'Lorem 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus mauris justo, mollis in convallis vel, varius sit amet libero. Vivamus aliquam, leo eu fermentum efficitur, mauris felis molestie nulla, non vulputate turpis mi et urna. Pellentesque at nibh nibh. Nullam eget lectus tellus. Ut lacus turpis, rutrum vitae ex id, imperdiet placerat nibh. Vestibulum turpis enim, consequat quis ullamcorper a, condimentum ac diam. Nulla luctus mattis sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam hendrerit vestibulum ligula sed porttitor. Vestibulum a bibendum risus. Donec ultrices cursus ante a consequat.\r\n\r\nAenean fringilla, risus a ullamcorper porta, mi ligula placerat massa, et dignissim nunc turpis nec odio. Nullam euismod nibh vitae ultrices lacinia. Praesent mattis interdum nunc non lobortis. Donec nisi lectus, convallis vel dictum ullamcorper, tincidunt ac lorem. Proin gravida lorem vel sapien molestie, at placerat dolor molestie. Sed venenatis et arcu sed malesuada. Donec sit amet mauris in massa ullamcorper cursus. Sed tincidunt congue nulla vitae euismod. Nunc placerat, massa vel faucibus tempus, lorem tellus faucibus ante, nec dignissim orci enim quis velit. Curabitur malesuada purus a felis mollis, in ultrices velit faucibus. Maecenas sed elit in risus condimentum accumsan. Sed at mauris feugiat, placerat ante vestibulum, mollis justo. Nullam cursus ut nisl et iaculis. Duis eget posuere sapien. Phasellus ac euismod tortor. Aliquam consequat magna ac volutpat varius.\r\n\r\nPhasellus convallis quam pharetra mattis molestie. Nam tristique purus quis ante ultricies, ut euismod neque tincidunt. Ut faucibus semper lectus, quis suscipit est tempor at. Cras in sapien ultrices sem rhoncus cursus. Vestibulum tincidunt consequat cursus. Integer vel sapien nec dolor commodo egestas. Praesent ultrices sed nunc sed scelerisque. In finibus nisl at felis congue, ut ultricies tellus varius. Donec sed augue non risus suscipit auctor vel vitae justo. Phasellus imperdiet volutpat dignissim.\r\n\r\nSuspendisse potenti. Fusce consectetur pellentesque lorem a auctor. Duis elit est, facilisis vitae ex et, consequat volutpat turpis. Phasellus vitae felis magna. Sed turpis orci, ultricies id vestibulum sit amet, rutrum vitae dolor. Nam dignissim massa vel consequat tempus. Praesent rutrum, nibh ut faucibus molestie, nulla turpis vulputate orci, at dapibus est dolor id nulla. Curabitur molestie tortor ut velit cursus, iaculis maximus tortor blandit. Nam molestie quis est a dignissim. Fusce felis leo, viverra et varius eget, vehicula at nunc.\r\n\r\nVivamus sit amet ligula eget erat auctor egestas vel eget felis. Etiam commodo ipsum facilisis tincidunt vestibulum. Aliquam ac vulputate ligula, et porttitor purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis feugiat ultrices justo, id bibendum arcu tempor eget. Ut sollicitudin in nulla tincidunt placerat. Nulla posuere sapien lectus, vulputate auctor erat sodales eget. Curabitur nibh turpis, hendrerit eu ornare vel, aliquet vel justo. Curabitur posuere dui quis massa bibendum, sed dapibus felis interdum. Morbi faucibus ullamcorper faucibus. Cras laoreet, neque vel sollicitudin placerat, erat lacus varius dui, vitae pretium arcu neque a libero. Sed luctus augue ut ante euismod sollicitudin. Quisque sit amet tellus at ex ultricies molestie. Ut porttitor egestas sem vel porttitor. Vivamus volutpat lobortis elit, eget consectetur purus tempus vitae. Vivamus tincidunt libero ac consectetur hendrerit.', 1, '28/08/2020', '5'),
(12, 'Estratégias em um Novo Paradigma Globalizado', '          Não obstante, o surgimento do comércio virtual obstaculiza a apreciação da importância das direções preferenciais no sentido do progresso. Do mesmo modo, o início da atividade geral de formação de atitudes pode nos levar a considerar a reestruturação do levantamento das variáveis envolvidas. Assim mesmo, a contínua expansão de nossa atividade nos obriga à análise do sistema de participação geral. Nunca é demais lembrar o peso e o significado destes problemas, uma vez que o julgamento imparcial das eventualidades assume importantes posições no estabelecimento das posturas dos órgãos dirigentes com relação às suas atribuições.\r\n\r\n          Desta maneira, o consenso sobre a necessidade de qualificação garante a contribuição de um grupo importante na determinação de todos os recursos funcionais envolvidos. Pensando mais a longo prazo, o desafiador cenário globalizado deve passar por modificações independentemente das diversas correntes de pensamento. As experiências acumuladas demonstram que a complexidade dos estudos efetuados possibilita uma melhor visão global do impacto na agilidade decisória. A nível organizacional, o fenômeno da Internet é uma das consequências das diretrizes de desenvolvimento para o futuro.\r\n\r\n          Acima de tudo, é fundamental ressaltar que a consulta aos diversos militantes oferece uma interessante oportunidade para verificação do remanejamento dos quadros funcionais. No mundo atual, o entendimento das metas propostas acarreta um processo de reformulação e modernização das formas de ação. Evidentemente, a mobilidade dos capitais internacionais apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos. É claro que a determinação clara de objetivos faz parte de um processo de gerenciamento dos relacionamentos verticais entre as hierarquias.\r\n\r\n          O incentivo ao avanço tecnológico, assim como a consolidação das estruturas ainda não demonstrou convincentemente que vai participar na mudança do orçamento setorial. Por outro lado, a constante divulgação das informações talvez venha a ressaltar a relatividade dos métodos utilizados na avaliação de resultados. Ainda assim, existem dúvidas a respeito de como a expansão dos mercados mundiais prepara-nos para enfrentar situações atípicas decorrentes do fluxo de informações. O empenho em analisar a execução dos pontos do programa maximiza as possibilidades por conta do retorno esperado a longo prazo.\r\n\r\n          Todavia, a crescente influência da mídia desafia a capacidade de equalização da gestão inovadora da qual fazemos parte. A prática cotidiana prova que a necessidade de renovação processual agrega valor ao estabelecimento dos modos de operação convencionais. O que temos que ter sempre em mente é que a competitividade nas transações comerciais representa uma abertura para a melhoria das condições inegavelmente apropriadas.\r\n\r\n          Percebemos, cada vez mais, que a adoção de políticas descentralizadoras causa impacto indireto na reavaliação do sistema de formação de quadros que corresponde às necessidades. No entanto, não podemos esquecer que o aumento do diálogo entre os diferentes setores produtivos cumpre um papel essencial na formulação dos conhecimentos estratégicos para atingir a excelência. Podemos já vislumbrar o modo pelo qual o desenvolvimento contínuo de distintas formas de atuação facilita a criação dos níveis de motivação departamental.\r\n\r\n          Neste sentido, a estrutura atual da organização estimula a padronização dos paradigmas corporativos. É importante questionar o quanto a hegemonia do ambiente político não pode mais se dissociar das novas proposições. Por conseguinte, a revolução dos costumes promove a alavancagem dos procedimentos normalmente adotados. A certificação de metodologias que nos auxiliam a lidar com a valorização de fatores subjetivos afeta positivamente a correta previsão das regras de conduta normativas.\r\n\r\n          Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a percepção das dificuldades exige a precisão e a definição do processo de comunicação como um todo. Caros amigos, o acompanhamento das preferências de consumo estende o alcance e a importância das condições financeiras e administrativas exigidas. O cuidado em identificar pontos críticos no novo modelo estrutural aqui preconizado auxilia a preparação e a composição do investimento em reciclagem técnica. Gostaria de enfatizar que o comprometimento entre as equipes aponta para a melhoria de alternativas às soluções ortodoxas.\r\n\r\n          Não obstante, o surgimento do comércio virtual causa impacto indireto na reavaliação dos índices pretendidos. Nunca é demais lembrar o peso e o significado destes problemas, uma vez que a determinação clara de objetivos agrega valor ao estabelecimento das diretrizes de desenvolvimento para o futuro. Assim mesmo, a competitividade nas transações comerciais assume importantes posições no estabelecimento das condições financeiras e administrativas exigidas.\r\n\r\n          Podemos já vislumbrar o modo pelo qual a consolidação das estruturas nos obriga à análise das posturas dos órgãos dirigentes com relação às suas atribuições. Gostaria de enfatizar que o consenso sobre a necessidade de qualificação obstaculiza a apreciação da importância dos paradigmas corporativos. Pensando mais a longo prazo, o novo modelo estrutural aqui preconizado cumpre um papel essencial na formulação das diversas correntes de pensamento. Todavia, a estrutura atual da organização facilita a criação de todos os recursos funcionais envolvidos. Por conseguinte, o aumento do diálogo entre os diferentes setores produtivos é uma das consequências dos níveis de motivação departamental.\r\n\r\n          É importante questionar o quanto a consulta aos diversos militantes oferece uma interessante oportunidade para verificação das condições inegavelmente apropriadas. A certificação de metodologias que nos auxiliam a lidar com a mobilidade dos capitais internacionais maximiza as possibilidades por conta do sistema de participação geral. Evidentemente, a expansão dos mercados mundiais deve passar por modificações independentemente dos modos de operação convencionais.\r\n\r\n          É claro que o desafiador cenário globalizado ainda não demonstrou convincentemente que vai participar na mudança dos relacionamentos verticais entre as hierarquias. Do mesmo modo, a adoção de políticas descentralizadoras representa uma abertura para a melhoria do orçamento setorial. Acima de tudo, é fundamental ressaltar que a constante divulgação das informações pode nos levar a considerar a reestruturação dos métodos utilizados na avaliação de resultados.\r\n\r\n          O incentivo ao avanço tecnológico, assim como o início da atividade geral de formação de atitudes prepara-nos para enfrentar situações atípicas decorrentes do fluxo de informações. O empenho em analisar o julgamento imparcial das eventualidades acarreta um processo de reformulação e modernização da gestão inovadora da qual fazemos parte. Percebemos, cada vez mais, que o fenômeno da Internet garante a contribuição de um grupo importante na determinação das direções preferenciais no sentido do progresso.\r\n\r\n          Caros amigos, a necessidade de renovação processual talvez venha a ressaltar a relatividade das formas de ação. O que temos que ter sempre em mente é que a crescente influência da mídia desafia a capacidade de equalização das novas proposições. A prática cotidiana prova que a complexidade dos estudos efetuados promove a alavancagem do remanejamento dos quadros funcionais.\r\n\r\n          As experiências acumuladas demonstram que a contínua expansão de nossa atividade apresenta tendências no sentido de aprovar a manutenção do retorno esperado a longo prazo. Ainda assim, existem dúvidas a respeito de como a hegemonia do ambiente político possibilita uma melhor visão global dos procedimentos normalmente adotados. Desta maneira, o acompanhamento das preferências de consumo exige a precisão e a definição do impacto na agilidade decisória.\r\n', 1, '28/08/2020', '2'),
(16, 'Far far away ', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then\r\n\r\n', 1, '28/08/2020', '1'),
(14, 'Testando', 'Testando', 1, '28/08/2020', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com'),
(2, 'tayane', 'b4adcd8ed53d17aa9e6a861d53c0e0b0', 'tayane@email.com'),
(3, 'breno', '4b4070bf857ce36407f2d14f016d8279', 'breno@email.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
