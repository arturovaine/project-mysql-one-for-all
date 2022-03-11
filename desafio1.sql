DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.usuarios(
    usuario_id INT PRIMARY KEY,
    usuario VARCHAR(100),
    idade INT
) engine = InnoDB;

INSERT INTO SpotifyClone.usuarios (usuario_id, usuario, idade, data_assinatura, plano_id)
VALUES
  (1, "Thati", 23, "2019-10-20", 1),
  (2, "Cintia", 35, "2017-12-30", 4),
  (3, "Bill", 20, "2019-06-05", 2),
  (4, "Roger", 45, "2020-05-13", 3),
  (5, "Norman", 58, "2017-02-17", 3),
  (6, 	"Patrick", 33, "2017-01-06", 4),
  (7, "Vivian", 26, "2018-01-05", 2),
  (8, "Carol", 19, "2018-02-14", 2),
  (9, "Angelina", 42, "2018-04-29", 4),
  (10, "Paul", 46, "2017-01-17", 4);

CREATE TABLE SpotifyClone.planos(
    plano_id INT PRIMARY KEY,
    plano VARCHAR(255),
    valor_plano DECIMAL(10, 2)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (plano_id, plano, valor_plano)
VALUES
  (1, "gratuito", 0),
  (2, "universitário", 5.99),
  (3, "pessoal", 6.99),
  (4, "familiar", 7.99);

CREATE TABLE SpotifyClone.artistas(
    artista_id INT PRIMARY KEY,
    artista VARCHAR(255)
) engine = InnoDB;

INSERT INTO SpotifyClone.artistas (artista_id, artista)
VALUES
  (1, "Fog"),
  (2, "Freedie Shannon"),
  (3, "Lance Day"),
  (4, "Peter Strong"),
  (5, "Tyler Isle"),
  (6, "Walter Phoenix");

CREATE TABLE SpotifyClone.albums(
    album_id INT PRIMARY KEY,
    album VARCHAR(255),
    ano_lancamento INT,
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.albums (album_id, album, ano_lancamento, artista_id)
VALUES
  (1, "Envious", 1990, 6),
  (2, "Exuberant", 1993, 6),
  (3, "Hallowed Steam", 1995, 4),
  (4, "Incandescent", 1998, 3),
  (5, "Temporary Culture", 2001, 2),
  (6, "Library of liberty", 2003, 2),
  (7, "Chained Down", 2007, 5),
  (8, "Cabinet of fools", 2012, 5),
  (9, "No guarantees", 2015, 5),
  (10, "Apparatus", 2015, 1);

CREATE TABLE SpotifyClone.cancoes(
    cancao_id INT PRIMARY KEY,
    cancao VARCHAR(255),
    duracao_segundos INT,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.cancoes (cancao_id, cancao, duracao_segundos, album_id)
VALUES
  (1, "Baby", 136, 10),
  (2, "Celebration Of More", 146, 4),
  (3, "Dance With Her Own", 116, 1),
  (4, "Diamond Power", 241, 4),
  (5, "Fantasy For Me", 100, 4),
  (6, "Finding My Traditions", 179, 7),
  (7, "Hard And Time", 135, 7),
  (8, "He Heard You're Bad For Me", 154, 8),
  (9, "He Hopes We Can't Stay", 210, 8),
  (10, "He's Trouble", 138, 9),
  (11, "He's Walking Away", 159, 9),
  (12, "History Of My Roses", 222, 6),
  (13, "Home Forever", 231, 4),
  (14, "Honey", 79, 10),
  (15, "Honey, I'm A Lone Wolf", 150, 7),
  (16, "Honey, So Do I", 207, 3),
  (17, "I Heard I Want To Bo Alone", 120, 9),
  (18, "I Know I Know", 117, 8),
  (19, "I Ride Alone", 151, 9),
  (20, "Let's Be Silly", 132, 4),
  (21, "Magic Circus", 105, 3),
  (22, "Need Of The Evening", 190, 6),
  (23, "Reflections Of Magic", 163, 1),
  (24, "Rock His Everything", 223, 4),
  (25, "She Knows", 244, 3),
  (26, "She Thinks I Won't Stay Tonight", 166, 8),
  (27, "Soul For Us", 200, 1),
  (28, "Sweetie, Let's Go Wild", 139, 3),
  (29, "Thang Of Thunder", 240, 5),
  (30, "Time Fireworks", 152, 2),
  (31, "Troubles Of My Inner Fire", 203, 2),
  (32, "Walking And Game", 123, 6),
  (33, "Walking And Man", 229, 7),
  (34, "Without My Love", 111, 6),
  (35, "Without My Streets", 176, 5),
  (36, "Words Of Her Life", 185, 5),
  (37, "Wouldn't It Be Nice", 213, 10),
  (38, "You Cheated On Me", 95, 10),
  (39, "You Make Me Feel So..", 83, 10),
  (40, "Young And Father", 197, 6);

CREATE TABLE SpotifyClone.seguidores(
    seguidor_id INT PRIMARY KEY,
    usuario_id INT,
    seguindo_artista_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.albums (seguidor_id, usuario_id, seguindo_artista_id)
VALUES
  (1, 1, 2),
  (2, 1, 3),
  (3, 1, 6),
  (4, 2, 3),
  (5, 2, 6),
  (6, 3, 4),
  (7, 3, 6),
  (8, 4, 2),
  (9, 5, 1),
  (10, 5, 5),
  (11, 6, 1),
  (12, 6, 3),
  (13, 6, 6),
  (14, 7, 4),
  (15, 7, 5),
  (16, 8, 5),
  (17, 8, 6),
  (18, 9, 1),
  (19, 9, 2),
  (20, 9, 3),
  (21, 10, 1),
  (22, 10, 4);

CREATE TABLE SpotifyClone.reproducoes(
    historico_id INT PRIMARY KEY,
    historico_reproducoes_data DATE,
    historico_reproducoes_horario TIME,
    cancao_id INT,
    usuario_id INT,
    FOREIGN KEY (cancao_id) REFERENCES cancoes(usuario_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.reproducoes (historico_id, historico_reproducoes_data, historico_reproducoes_horario, cancao_id, usuario_id)
VALUES
(1, "2020-02-28", "10:45:55", 14, 1),
(2, "2020-05-02", "05:30:35", 33, 1),
(3, "2020-03-06", "11:22:33", 40, 1),
(4, "2020-08-05", "08:05:17", 4, 1),
(5, "2020-09-14", "16:32:22", 20, 1),
(6, "2020-01-02", "07:40:33", 17, 2),
(7, "2020-05-16", "06:16:22", 6, 2),
(8, "2020-10-09", "12:27:48", 34, 2),
(9, "2020-09-21", "13:14:46", 1, 2),
(10, "2020-11-13", "16:55:13", 21, 3),
(11, "2020-12-05", "18:38:30", 3, 3),
(12, "2020-07-30", "10:00:00", 7, 3),
(13, "2021-08-15", "17:10:10", 23, 4),
(14, "2021-07-10", "15:20:30", 19, 4),
(15, "2021-01-09", "01:44:33", 15, 4),
(16, "2020-07-03", "19:33:28", 16, 5),
(17, "2017-02-24", "21:14:22", 24, 5),
(18, "2020-08-06", "15:23:43", 4, 5),
(19, "2020-11-10", "13:52:27", 27, 5),
(20, "2019-02-07", "20:33:48", 37, 6),
(21, "2017-01-24", "00:31:17", 8, 6),
(22, "2017-10-12", "12:35:20", 9, 6),
(23, "2018-05-29", "14:56:41", 32, 6),
(24, "2018-05-09", "22:30:49", 30, 7),
(25, "2020-07-27", "12:52:58", 31, 7),
(26, "2018-01-16", "18:40:43", 2, 7),
(27, "2018-03-21", "16:56:40", 1, 8),
(28, "2020-10-18", "13:38:05", 39, 8),
(29, "2019-05-25", "08:14:03", 11, 8),
(30, "2021-08-15", "21:37:09", 10, 8),
(31, "2021-05-24", "17:23:45", 29, 9),
(32, "2018-12-07", "22:48:52", 36, 9),
(33, "2021-03-14", "06:14:26", 28, 9),
(34, "2020-04-01", "03:36:00", 25, 9),
(35, "2017-02-06", "08:21:34", 12, 10),
(36, "2017-12-04", "05:33:43", 34, 10),
(37, "2017-07-27", "05:24:49", 24, 10),
(38, "2017-12-25", "01:03:57", 13, 10);
