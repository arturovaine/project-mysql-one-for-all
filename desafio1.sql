DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.usuarios(
    usuario_id int primary key,
    usuario varchar(100),
    idade int
) engine = InnoDB;

INSERT INTO SpotifyClone.usuarios (usuario_id, usuario, idade)
VALUES
  (1, 'Thati', 23),
  (2, 'Cintia', 35),
  (3, 'Bill', 20),
  (4, 'Roger', 45),
  (5, 'Norman', 58),
  (6, 	'Patrick', 33),
  (7, 'Vivian', 26),
  (8, 'Carol', 19),
  (9, 'Angelina', 42),
  (10, 'Paul', 46);

CREATE TABLE SpotifyClone.planos(
    plano_id int primary key,
    plano varchar(255),
    valor_plano DECIMAL(10, 2)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (plano_id, plano, valor_plano)
VALUES
  (1, 'gratuito', 0),
  (2, 'universitário', 5.99),
  (3, 'pessoal', 6.99),
  (4, 'familiar', 7.99);

CREATE TABLE SpotifyClone.artistas(
    artista_id int primary key,
    artista varchar(255)
) engine = InnoDB;

INSERT INTO SpotifyClone.artistas (artista_id, artista)
VALUES
  (1, 'Fog'),
  (2, 'Freedie Shannon'),
  (3, 'Lance Day'),
  (4, 'Peter Strong'),
  (5, 'Tyler Isle'),
  (6, 'Walter Phoenix');

CREATE TABLE SpotifyClone.albums(
    album_id int primary key,
    album varchar(255),
    ano_lancamento int,
    artista_id int,
    foreign key (artista_id) references artistas(artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.albums (album_id, album, ano_lancamento, artista_id)
VALUES
  (1, 'Envious', 1990, 6),
  (2, 'Exuberant', 1993, 6),
  (3, 'Hallowed Steam', 1995, 4),
  (4, 'Incandescent', 1998, 3),
  (5, 'Temporary Culture', 2001, 2),
  (6, 'Library of liberty', 2003, 2),
  (7, 'Chained Down', 2007, 5),
  (8, 'Cabinet of fools', 2012, 5),
  (9, 'No guarantees', 2015, 5),
  (10, 'Apparatus', 2015, 1);

CREATE TABLE SpotifyClone.cancoes(
    cancao_id int primary key,
    cancao varchar(255),
    duracao_segundos int,
    album_id int,
    foreign key (album_id) references albums(album_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.cancoes (cancao_id, cancao, duracao_segundos, album_id)
VALUES
  (1, 'Baby', 136, 10),
  (2, 'Celebration Of More', 146, 4),
  (3, 'Dance With Her Own', 116, 1),
  (4, 'Diamond Power', 241, 4),
  (5, 'Fantasy For Me', 100, 4),
  (6, 'Finding My Traditions', 179, 7),
  (7, 'Hard And Time', 135, 7),
  (8, 'He Heard You''re Bad For Me', 154, 8),
  (9, 'He Hopes We Can''t Stay', 210, 8),
  (10, 'He''s Trouble', 138, 9),
  (11, 'He''s Walking Away', 159, 9),
  (12, 'History Of My Roses', 222, 6),
  (13, 'Home Forever', 231, 4),
  (14, 'Honey', 79, 10),
  (15, 'Honey, I''m A Lone Wolf', 150, 7),
  (16, 'Honey, So Do I', 207, 3),
  (17, 'I Heard I Want To Bo Alone', 120, 9),
  (18, 'I Know I Know', 117, 8),
  (19, 'I Ride Alone', 151, 9),
  (20, 'Let''s Be Silly', 132, 4),
  (21, 'Magic Circus', 105, 3),
  (22, 'Need Of The Evening', 190, 6),
  (23, 'Reflections Of Magic', 163, 1),
  (24, 'Rock His Everything', 223, 4),
  (25, 'She Knows', 244, 3),
  (26, 'She Thinks I Won''t Stay Tonight', 166, 8),
  (27, 'Soul For Us', 200, 1),
  (28, 'Sweetie, Let''s Go Wild', 139, 3),
  (29, 'Thang Of Thunder', 240, 5),
  (30, 'Time Fireworks', 152, 2),
  (31, 'Troubles Of My Inner Fire', 203, 2),
  (32, 'Walking And Game', 123, 6),
  (33, 'Walking And Man', 229, 7),
  (34, 'Without My Love', 111, 6),
  (35, 'Without My Streets', 176, 5),
  (36, 'Words Of Her Life', 185, 5),
  (37, 'Wouldn''t It Be Nice', 213, 10),
  (38, 'You Cheated On Me', 95, 10),
  (39, 'You Make Me Feel So..', 83, 10),
  (40, 'Young And Father', 197, 6);
