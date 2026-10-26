# Trabalho-Pesagem
git add README.mdAlunos 
Diego Gonçalves Fernandes Faria RA:2501113
Diya Mustafa Mohammad Shami RA:2501240
Kerby Charles: 2500929
Luiz Henrique Gonçalves da Silva: 2501545
Paulo Vinicius da Cruz Faria 

# Trabalho Pesagem — Sistema de Acompanhamento Corporal

> Aplicação web para cadastro de usuários, registro de pesagens e acompanhamento da evolução do peso corporal.

## Sobre o projeto

O **Trabalho Pesagem** é um projeto acadêmico desenvolvido com o objetivo de facilitar o acompanhamento do peso corporal ao longo do tempo.

O sistema permite cadastrar usuários, registrar medições de peso e consultar o histórico de pesagens. A partir dos dados cadastrados, como altura e data de nascimento, a aplicação poderá calcular o Índice de Massa Corporal (IMC) e apresentar informações sobre a condição corporal do usuário, conforme os critérios de avaliação adotados.

## Objetivos

- Desenvolver uma aplicação web integrada a um banco de dados relacional.
- Permitir o cadastro e o gerenciamento de usuários.
- Registrar e consultar o histórico de pesagens.
- Calcular o Índice de Massa Corporal (IMC).
- Organizar os registros de peso por usuário e data.
- Aplicar conhecimentos de desenvolvimento web, banco de dados e engenharia de software.

## Funcionalidades

- **Cadastro de usuários:** armazenamento de informações pessoais e dados necessários para as avaliações.
- **Registro de pesagens:** inclusão de novas medições de peso.
- **Histórico de pesagens:** consulta dos registros anteriores.
- **Cálculo do IMC:** cálculo baseado no peso e na altura cadastrada.
- **Análise corporal:** apresentação de informações conforme critérios de referência adequados ao perfil do usuário.

> As funcionalidades serão disponibilizadas conforme o andamento da implementação do projeto.

## Tecnologias utilizadas

As tecnologias previstas para o desenvolvimento são:

- **Frontend:** HTML5, CSS3 e JavaScript.
- **Backend:** Java.
- **Banco de dados:** MySQL.
- **Servidor de aplicação:** Apache Tomcat.
- **Versionamento:** Git e GitHub.

As tecnologias e ferramentas poderão ser atualizadas conforme as necessidades do projeto.

## Arquitetura e estrutura do projeto

A organização proposta para os arquivos é a seguinte:

```text
Trabalho-Pesagem/
├── config/
│   ├── database/
│   └── tomcat/
├── docs/
│   └── requisitos.pdf
├── frontend/
├── backend/
└── README.md
```

### Responsabilidade dos diretórios

- `config/`: arquivos de configuração necessários ao ambiente de desenvolvimento.
- `config/database/`: scripts SQL para criação e configuração do banco de dados.
- `config/tomcat/`: configurações relacionadas ao servidor de aplicação.
- `docs/`: documentação e requisitos do sistema.
- `frontend/`: arquivos responsáveis pela interface do usuário.
- `backend/`: código Java responsável pelas regras de negócio e pela comunicação com o banco de dados.

> A estrutura acima é uma proposta de organização e deverá corresponder aos diretórios efetivamente presentes no repositório.

## Estrutura do banco de dados

O banco de dados utiliza duas tabelas principais.

### Tabela `usuario`

Responsável pelo armazenamento dos dados cadastrais.

| Campo | Descrição |
|---|---|
| `id` | Identificador único do usuário (chave primária). |
| `nome` | Nome completo do usuário. |
| `email` | E-mail de acesso, com identificação única. |
| `senha` | Senha armazenada de forma segura, utilizando hash. |
| `data_nascimento` | Data de nascimento do usuário. |
| `altura` | Altura do usuário em metros. |

### Tabela `peso`

Responsável pelo armazenamento do histórico de medições.

| Campo | Descrição |
|---|---|
| `id` | Identificador único da pesagem (chave primária). |
| `usuario_id` | Referência ao usuário relacionado (chave estrangeira). |
| `peso` | Peso registrado em quilogramas. |
| `data_registro` | Data do registro da pesagem. |

### Relacionamento

Um usuário pode possuir vários registros de pesagem. Cada registro está associado a um único usuário por meio da chave estrangeira `usuario_id`.

## Documentação

Os documentos de análise e planejamento do sistema serão organizados no diretório `docs/`.

- **Requisitos do sistema:** `docs/requisitos.pdf`

A documentação deverá descrever os requisitos funcionais, os requisitos não funcionais e as regras de negócio da aplicação.

## Como executar o projeto

### Pré-requisitos

- Visual Studio Code ou outra IDE compatível.
- Java JDK compatível com a aplicação e o servidor.
- Apache Tomcat.
- MySQL Server.
- Git.

### Passos para execução

1. Clone o repositório:

   ```bash
   git clone <URL_DO_REPOSITORIO>
   ```

2. Entre no diretório do projeto:

   ```bash
   cd Trabalho-Pesagem
   ```

3. Inicie o servidor MySQL e execute o script de criação do banco de dados.

4. Configure as credenciais de conexão com o banco de dados no ambiente da aplicação.

5. Configure e inicie o Apache Tomcat.

6. Compile e disponibilize a aplicação no servidor, conforme a estrutura do backend implementado.

7. Acesse a aplicação pelo endereço local configurado no Tomcat.

> **Observação:** os comandos exatos de compilação, configuração e inicialização serão documentados após a definição da estrutura executável do projeto.

## Testes

O projeto prevê a implementação de testes para verificar:

- Validação dos dados de entrada.
- Regras de negócio relacionadas às pesagens.
- Cálculo do IMC.
- Persistência e consulta dos registros.
- Tratamento de erros durante as operações.

Os testes serão documentados conforme forem implementados.

## Segurança e privacidade

- As senhas dos usuários devem ser armazenadas utilizando algoritmos seguros de hash.
- As credenciais do banco de dados não devem ser publicadas no repositório.
- As consultas ao banco devem utilizar mecanismos seguros para evitar injeção de SQL.
- Os registros pessoais devem ser acessíveis somente conforme as permissões definidas pela aplicação.

## Status do projeto

**Em desenvolvimento.** 🌱

O projeto está em fase de construção e poderá receber melhorias na arquitetura, nas funcionalidades, na segurança e na documentação ao longo do desenvolvimento.

## Objetivo acadêmico

Este projeto tem como finalidade aplicar conhecimentos de programação, desenvolvimento web, modelagem de banco de dados relacional e organização de sistemas de software.

O sistema possui finalidade informativa e não substitui uma avaliação realizada por profissionais de saúde.
