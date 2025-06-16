# To-Do List - Aplicativo em Ruby on Rails

![To-Do App Screenshot](https://i.imgur.com/r6jS2s6.png)
_Sugestão: Troque o link acima por um screenshot seu. Você pode subir a imagem no próprio GitHub ou usar um serviço como o Imgur._

## 📖 Sobre o Projeto

Este é um aplicativo web de lista de tarefas (To-Do) desenvolvido com Ruby on Rails. O projeto foi criado como uma forma de aplicar e aprofundar conhecimentos no framework, incluindo funcionalidades essenciais como autenticação de usuários, operações CRUD (Criar, Ler, Atualizar, Deletar) para tarefas e internacionalização para múltiplos idiomas.

---

### ✨ Principais Funcionalidades

* **Autenticação de Usuários:** Sistema completo de cadastro, login, logout e recuperação de senha utilizando a gema Devise.
* **Gerenciamento de Tarefas:** Usuários autenticados podem criar, visualizar, editar e excluir suas próprias tarefas.
* **Internacionalização (I18n):** Suporte para os idiomas Português (pt-BR) e Inglês (en).
* **Interface Responsiva:** Layout limpo e funcional desenvolvido com o framework CSS Bootstrap.

---

### 🛠️ Tecnologias Utilizadas

Esta é a lista das principais tecnologias e ferramentas usadas na construção do projeto:

* **Backend:** Ruby on Rails
* **Frontend:** HTML5, SCSS, JavaScript, Bootstrap
* **Banco de Dados:** PostgreSQL (produção) e SQLite3 (desenvolvimento)
* **Autenticação:** [Devise](https.github.com/heartcombo/devise)
* **Controle de Versão:** Git & GitHub

---

### 🚀 Como Executar o Projeto Localmente

Siga os passos abaixo para conseguir rodar o projeto na sua máquina.

#### Pré-requisitos

Antes de começar, você vai precisar ter instalado em sua máquina as seguintes ferramentas:
* [Ruby](https.www.ruby-lang.org/pt/)
* [Bundler](https.bundler.io/)
* [Rails](https.rubyonrails.org/)
* [Git](https.git-scm.com/)

#### Rodando o Projeto

```bash
# 1. Clone o repositório
$ git clone [https://github.com/heitorwick/to-do.git](https://github.com/heitorwick/to-do.git)

# 2. Acesse a pasta do projeto no terminal
$ cd to-do

# 3. Instale as dependências (gems)
$ bundle install

# 4. Crie e configure o banco de dados
<span class="math-inline">rails db\:create</span> rails db:migrate

# 5. Inicie o servidor Rails
$ rails s
