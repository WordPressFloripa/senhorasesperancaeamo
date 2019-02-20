# senhorasesperancaeamo
Site da entidade que atende crianças, adolescentes e pessoas com deficiência na Vila Aparecida.


## Começando

Essas instruções farão com que você tenha uma cópia do projeto em execução na sua máquina local para fins de desenvolvimento e teste. Veja as notas sobre como implantar o projeto em um sistema ativo.


## Pré-requisitos

O que você precisa para instalar o software e instalá-lo. 

* [PHP 7.2](http://php.net/downloads.php) - Não usar a versão 5.6
* [MariaDB](https://mariadb.org/) - Recomendado a versão 10.2 Ou MySQL
* [Git](https://git-scm.com/downloadsp) -  versão 2.17.0 ou superior instalado em seu computador local


## 1 - Adicionando as credenciais SSH

Com as chaves SSH, você pode se conectar ao GitHub sem fornecer seu nome de usuário/senha em cada visita.

* [Guia SSH](https://help.github.com/articles/connecting-to-github-with-ssh/) -  Guia de como testar e adicionar as chaves de autenticação


## 2 - Baixe Repositório

Utilize o GitBash para executar os comandos

```
git clone git@github.com:WordPressFloripa/senhorasesperancaeamor.git

```

## 3 - Base de Dados de Desenvolvimento

Na raiz desse repositório há uma pasta chamad "_configs", nela temos a basa de dados que usaremos no ambiente de desenvolvimento e também um arquivo de configurações.

### Base de Dados
Cada um usa um host diferente para desenvolvimento, por isso precisamos substituir as referências. 
Faça um replace das seguintes referências:

```
DE:
//senhorasesperancaeamor.dev.br

PARA:

//senhorasesperancaeamor.SEU_HOST


DE:
D:\\laragon\\www\\senhorasesperancaeamor

PARA:

LOCAL_DO_SITE:\\senhorasesperancaeamor


```

Onde "SEU_HOST" e "LOCAL_DO_SITE" são os que vc criou e onde está localizado os arquivos.



### Commitando as alterações

Pelo GitBash, digites os seguintes comandos:

```
$ git pull
$ git add .
$ git commit -m "Nome do Commit"
$ git push
```
Você também pode baixar o [Gitkraken](https://www.gitkraken.com/download)



## Tema

Optamos por desenvolver o tema principal tendo como tema base o [Onepress](https://br.wordpress.org/themes/onepress/).
Já temos um tema filho chamado "Senhoras Esperança e Amor" as aterações devem ser feitas lá.