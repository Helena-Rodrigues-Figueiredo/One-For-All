# Projeto One For All

Desenvolvi esse projeto no módulo de Back-end enquanto estudante da Trybe, com o objetivo de consolidar o aprendizado em `Modelagem de um Banco de Dados` e em `Normalização`.

## Desafio 1

* Crie um banco com o nome de **`SpotifyClone`**.

* Providencie as queries necessárias para criar tabelas normalizadas;

* Providencie as queries necessárias para popular as tabelas de acordo com os dados abaixo:
![Tabela não normalizada "Spotify Clone"](./images/non-normalized-tables.png)

---

## Desafio 2

Crie uma `QUERY` que exiba três colunas:

1. A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "**cancoes**".

2. A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "**artistas**".

3. A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "**albuns**".

✨ Dica: Considerando que a tabela está normalizada, você pode usar as chaves estrangeiras para juntar as tabelas, ou usar _sub-queries_ de forma que seja possível extrair o resultado

Sua `QUERY` deve retornar a seguinte informação:

![Estatísticas musicais](./images/estatisticas_musicais.png)

---

## Desafio 3

Crie uma `QUERY` que deverá ter apenas três colunas:

1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve possuir o alias "**qt_de_musicas_ouvidas**" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.

3. A terceira coluna deve possuir o alias "**total_minutos**" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.

Sua `QUERY` deve retornar a seguinte informação:

![Histórico de reprodução das pessoas usuárias](./images/HistoricoReproducaoUsuarios.png)

---

## Desafio 4

Crie uma `QUERY` que deve mostrar as pessoas usuárias que estavam ativas **a partir do ano de 2021**, se baseando na data mais recente no histórico de reprodução.

1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve ter o alias "**status_usuario**" e exibir se a pessoa usuária está ativa ou inativa.

O resultado deve estar ordenado em ordem alfabética.

Sua `QUERY` deve retornar a seguinte informação:

![Condição da pessoa usuária](./images/condicao_usuario.png)

---

## Desafio 5

Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma `QUERY` que possua duas colunas:

1. A primeira coluna deve possuir o alias "**cancao**" e exibir o nome da canção.

2. A segunda coluna deve possuir o alias "**reproducoes**" e exibir a quantidade de pessoas que já escutaram a canção em questão.

Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

Sua `QUERY` deve retornar a seguinte informação:

---

## Desafio 6

Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma `QUERY` que deve exibir quatro dados:

1. A primeira coluna deve ter o alias "**faturamento_minimo**" e exibir o menor valor de plano existente para uma pessoa usuária.

2. A segunda coluna deve ter o alias "**faturamento_maximo**" e exibir o maior valor de plano existente para uma pessoa usuária.

3. A terceira coluna deve ter o alias "**faturamento_medio**" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.

4. Por fim, a quarta coluna deve ter o alias "**faturamento_total**" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.

Para cada um desses dados, por se tratarem de valores monetários, deve-se arredondar o faturamento usando apenas duas casas decimais.

Sua `QUERY` deve retornar a seguinte informação:

![Faturamento atual](./images/faturamento_atual.png)

---

## Desafio 7

Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma `QUERY` com as seguintes colunas:

1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "**artista**".

2. A segunda coluna deve exibir o nome do álbum, com o alias "**album**".

3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "**seguidores**".

Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso há artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.

Sua `QUERY` deve retornar a seguinte informação:

![PerfilArtistas](./images/perfil_artistas.png)

---

## Desafio 8

Mostre uma relação dos álbuns produzidos por um artista específico, neste caso `"Elis Regina"`.
Para isto crie uma `QUERY` que o retorno deve exibir as seguintes colunas:

1. O nome da pessoa artista, com o alias "**artista**".

2. O nome do álbum, com o alias "**album**".

Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

Sua `QUERY` deve retornar a seguinte informação:

![Álbuns da pessoa artista](./images/AlbunsDoArtista.png)

---

## Desafio 9

Crie uma `QUERY` que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico da usuária `"Barbara Liskov"` e a consulta deve retornar a seguinte coluna:

1. O valor da quantidade, com o alias "**quantidade_musicas_no_historico**".

Sua `QUERY` deve retornar a seguinte informação:

![Quantidade de músicas no histórico](./images/quantidade_musicas_no_historico.png)

---

## Desafio 10

Crie uma `QUERY` que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano gratuito ou pessoal de acordo com os detalhes a seguir:

* A primeira coluna deve exibir o nome da canção, com o alias "**nome**";

* A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "**reproducoes**";

* Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.

Sua `QUERY` deve retornar a seguinte informação:

![Canções premium](./images/cancoes_premium.png)

---

## BÔNUS

## Desafio 11

Crie uma `QUERY` que altere o nome de algumas músicas e as ordene em ordem alfabética decrescente com as colunas abaixo se baseando nos seguintes critérios:

1. O nome da música em seu estado normal com o alias **nome_musica**

2. O nome da música atualizado com o alias **novo_nome**
3. Selecione apenas as músicas que tiverem seus nomes trocados 

**Critérios**

- Trocar a palavra **"Amar"** no final do nome de uma música por **"Code Review"**

- Trocar a palavra **"SUPERSTAR"** no final do nome de uma música por **"SUPERDEV"**

- Trocar a palavra **"Bard"** no final do nome de uma música por **"QA"**

- Trocar a palavra **"SOUL"** no final do nome de uma música por **"CODE"**

- Trocar a palavra **"Pais"** no final do nome de uma música por **"Pull Requests"**

Sua `QUERY` retornar a seguinte informação:

![Nome das músicas trocados](./images/replace_name.png)