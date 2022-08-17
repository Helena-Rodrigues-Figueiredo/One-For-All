DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plano(
      plano_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(50) NOT NULL,
      valor DECIMAL(4, 2) NOT NULL
  ) engine = InnoDB;

   CREATE TABLE SpotifyClone.artista(
      artista_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(50) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(50) NOT NULL,
      ano_lancamento INT NOT NULL,
      artista_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(50) NOT NULL,
      idade INT NOT NULL,
      plano_id INT NOT NULL,
      data_assinatura DATE NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.musica(
      musica_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(80) NOT NULL,
      duracao INT NOT NULL,
      album_id INT NOT NULL,
      FOREIGN KEY (album_id) REFERENCES album(album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historico(
      data_reproducao DATETIME NOT NULL,
      musica_id INT NOT NULL,
      usuario_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY (musica_id, usuario_id),
      FOREIGN KEY (musica_id) REFERENCES musica(musica_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.seguindo(
      usuario_id INT NOT NULL,
      artista_id INT,
      CONSTRAINT PRIMARY KEY (artista_id, usuario_id),
      FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.plano (nome, valor)
  VALUES
    ('gratuito', 0.00),
    ('pessoal', 6.99),
    ('familiar', 7.99),
    ('universitário', 5.99);

  INSERT INTO SpotifyClone.artista (nome)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.album (nome, ano_lancamento, artista_id)
  VALUES
    ('Renaissance', 2022, 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilhante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2012, 6);

  INSERT INTO SpotifyClone.usuario (nome, idade, plano_id, data_assinatura)
  VALUES
    ('Barbara Liskov', 82, 1, '2019-10-20'),
    ('Robert Cecil Martin', 58, 1, '2017-01-06'),
    ('Ada Lovelace', 37, 3, '2017-12-30'),
    ('Martin Fowler', 46, 3, '2017-01-17'),
    ('Sandi Metz', 58, 3, '2018-04-29'),
    ('Paulo Freire', 19, 4, '2018-02-14'),
    ('Bell Hooks', 26, 4, '2018-01-05'),
    ('Christopher Alexander', 85, 2, '2019-06-05'),
    ('Judith Butler', 45, 2, '2020-05-13'),
    ('Jorge Amado', 58, 2, '2017-02-17');

  INSERT INTO SpotifyClone.musica (nome, duracao, album_id)
  VALUES
    ('BREAK MY SOUL', 279, 1),
    ('VIRGO’S GROOVE', 369, 1),
    ('ALIEN SUPERSTAR', 116, 1),
    ('Don’t Stop Me Now', 203, 2),
    ('Under Pressure', 152, 3),
    ('Como Nossos Pais', 105, 4),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
    ('Samba em Paris', 267, 6),
    ('The Bard’s Song', 244, 7),
    ('Feeling Good', 100, 8);

  INSERT INTO SpotifyClone.historico (data_reproducao, musica_id, usuario_id)
  VALUES
    ('2022-02-28 10:45:55', 8, 1),
    ('2020-05-02 05:30:35', 2, 1),
    ('2020-03-06 11:22:33', 10, 1),
    ('2022-08-05 08:05:17', 10, 2),
    ('2020-01-02 07:40:33', 7, 2),
    ('2020-11-13 16:55:13', 10, 3),
    ('2020-12-05 18:38:30', 2, 3),
    ('2021-08-15 17:10:10', 8, 4),
    ('2022-01-09 01:44:33', 8, 5),
    ('2020-08-06 15:23:43', 5, 5),
    ('2017-01-24 00:31:17', 7, 6),
    ('2017-10-12 12:35:20', 1, 6),
    ('2011-12-15 22:30:49', 4, 7),
    ('2012-03-17 14:56:41', 4, 8),
    ('2022-02-24 21:14:22', 9, 9),
    ('2015-12-13 08:30:22', 3, 10);

  INSERT INTO SpotifyClone.seguindo (usuario_id, artista_id)
  VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 1),
    (7, 6),
    (9, 3),
    (10, 2);