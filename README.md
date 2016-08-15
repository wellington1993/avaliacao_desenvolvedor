# Desafio de programação
A idéia deste desafio é nos permitir avaliar melhor as habilidades de candidatos à vagas de programador, de vários níveis.

Este desafio deve ser feito por você em sua casa. Gaste o tempo que você quiser, porém normalmente você não deve precisar de mais do que algumas horas.

## Instruções de entrega do desafio
1. Crie seu app Rails e inicialize um repositório git.
2. Faça commits (e pushs) conforme for terminando features.
3. Crie instruções de instalação e execução do aplicativo em seu README.md
4. Por fim, envie o link do seu repositorio para avaliarmos seu código

## Descrição do projeto
Você recebeu um arquivo de texto com os dados de vendas da empresa. Precisamos criar uma maneira para que estes dados sejam importados para um banco de dados.

Sua tarefa é criar uma interface web que aceite upload de arquivos, normalize os dados e armazene-os no banco de dados.

Sua aplicação web DEVE:

1. Aceitar (via um formulário) o upload de arquivos text, com dados separados por TAB testar o aplicativo usando o arquivo fornecido. A primeira linha do arquivo tem o nome das colunas. Você pode assumir que as colunas estarão sempre nesta ordem, e que sempre haverá uma linha de cabeçalho. Um arquivo de exemplo chamado 'dados.txt' está incluído neste repositório.
2. Interpretar ("parsear") o arquivo recebido, normalizar os dados, e salvar corretamente a informação em um banco de dados relacional.
3. Exibir todos os registros importados, bem como a receita bruta total dos registros contidos no arquivo enviado após o upload + parser.
4. A aplicação deve ser escrita obrigatoriamente em: Ruby 2.2+ Rails 5 e SQLite 
5. Ser simples de configurar e rodar a partir das instruções fornecidas, funcionando em ambiente compatível com Unix (Linux ou Mac OS X). Ela deve utilizar apenas linguagens e bibliotecas livres ou gratuitas.
6. Ter um teste de model e controller automatizado para a funcionalidade pedida
7. Ter uma boa aparecia e ser fácil de usar

## Avaliação
Seu projeto será avaliado de acordo com os seguintes critérios. 

1. Sua aplicação atende funcionalmente o que foi pedido
2. 100% de cobertura de testes em models e controllers.
3. Você documentou a maneira de configurar o ambiente e rodar sua aplicação na maquina do avaliador
4. Você seguiu as instruções enviadas
5. Voce segue as boas práticas de programação e entrega para o Cliente
6. O código escrito é facil de entender e manter
7. Você se preocupa com o uso do aplicativo pelo Usuário

Adicionalmente, tentaremos verificar a sua familiarização com as bibliotecas padrões, bem como sua experiência com programação orientada a objetos a partir da estrutura de seu projeto, preocupação com o objetivo da aplicação e do seu uso pelo usuário, suporte e manutenção do código por outros desenvolvdores

### Referência

Este desafio foi baseado neste outro desafio: https://github.com/lschallenges/data-engineering
