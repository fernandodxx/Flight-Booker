# Sistema de Reservas de Voos ✈️
Este é um sistema de reservas de voos desenvolvido com Ruby on Rails, onde os usuários podem pesquisar voos, escolher um voo disponível e preencher as informações dos passageiros para completar a reserva.

## Funcionalidades
* **Pesquisa de Voos:** Os usuários podem selecionar o aeroporto de partida, chegada, data do voo e número de passageiros para encontrar voos disponíveis.
* **Escolha de Voos:** O usuário visualiza uma lista de voos correspondentes e pode selecionar o voo desejado.
* **Informações dos Passageiros:** Formulários para inserir informações de nome e e-mail de cada passageiro antes de completar a reserva.
* **Confirmação da Reserva:** Exibição dos detalhes do voo escolhido e dos passageiros.
## Requisitos
* Ruby 3.2.2
* Rails 7.0.6
* SQLite (ou outro banco de dados compatível com ActiveRecord)
## Instalação
1. Clone o repositório
```bash
git clone https://github.com/seuusuario/sistema-de-reservas-de-voos.git
cd sistema-de-reservas-de-voos
```
2. Instale as dependências
```bash
bundle install
```
3. Configure o banco de dados

Configure o arquivo `config/database.yml` com as credenciais do seu banco de dados. Em seguida, crie e migre as tabelas:
```bash
rails db:create
rails db:migrate
```
4. Popule o banco de dados com dados iniciais

Use o arquivo `db/seeds.rb` para criar os aeroportos e alguns voos de exemplo:
```bash
rails db:seed
```
5. Execute o servidor

Agora você pode iniciar o servidor local:
```bash
rails server
```
Acesse o sistema em `http://localhost:3000`.

## Estrutura de Modelos
* **Flight:** Armazena os dados de um voo, incluindo os aeroportos de partida e chegada, data e hora de início e duração.
* **Airport:** Representa um aeroporto com um código único.
* **Booking:** Representa uma reserva de voo, associada a um voo e com o número de passageiros.
* **Passenger:** Representa os passageiros em uma reserva, com nome e e-mail.

## Relacionamentos
* Um **Flight** tem muitos **Bookings**.
* Um **Booking** pertence a um **Flight** e tem muitos **Passengers**.
* Um **Passenger** pertence a um **Booking**.

## Como Usar
1. Pesquisa de Voos
Na página inicial (`/flights`), o usuário pode realizar uma pesquisa preenchendo os campos de:

* Aeroporto de partida
* Aeroporto de chegada
* Data do voo
* Número de passageiros

2. Escolha de Voo
Os resultados são exibidos em uma tabela, e o usuário pode selecionar o voo desejado. O formulário também mantém os critérios de pesquisa no topo da página para permitir novas consultas.

3. Informações dos Passageiros
Após escolher o voo, o usuário preenche o nome e e-mail de cada passageiro no formulário exibido. O formulário permite capturar múltiplos passageiros usando campos aninhados.

4. Confirmação da Reserva
Após a submissão, o sistema redireciona para a página de confirmação, exibindo os detalhes da reserva, incluindo os dados do voo e dos passageiros.
