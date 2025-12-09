# devcalc-api
---
[![Hello Workflow](https://github.com/AugustoCedro/devcalc-api/actions/workflows/hello.yml/badge.svg)](https://github.com/AugustoCedro/devcalc-api/actions/workflows/hello.yml)
---
## Descrição
O **DevCalc API** é um projeto desenvolvido em **Java** que disponibiliza uma API REST para realizar **operações matemáticas simples**, como adição, subtração, multiplicação e divisão.

Este projeto tem como principal objetivo **servir de base para a implementação de um pipeline de CI/CD completo**, utilizando **GitHub Actions**.  
A API será utilizada para validar conceitos de integração contínua, entrega contínua e automação de processos de build, testes e deploy.

---
## Tecnologias Utilizadas

- **Java 21**
- **Javalin** (para construção da API REST)
- **Maven** (como ferramenta de build)
- **JUnit 5** (para testes automatizados)
- **Docker & Docker Hub**
- **Docker Compose**
- **GitHub Actions**
---
## Estrutura do Projeto
    devcalc/
        └── src/
        ├── main/
        │   └── java/com/devcalc/
        │          ├── App.java
        │          └── service/CalculatorService.java
        └── test/
            └── java/com/devcalc/
                └── CalculatorServiceTest.java
---
## Como Executar o Projeto Localmente

### 🔧 Pré-requisitos

- **Java 21** ou superior instalado
- **Maven** instalado
- **Git** instalado

### Passos para execução

1. **Clonar o repositório:**
   ```bash
   git clone https://github.com/AugustoCedro/devcalc-api.git
   cd devcalc-api
2. **Executar a aplicação:**
    ```bash
    mvn clean package
    java -jar target/devcalc-api.jar
3. **Rodar Testes:**
    ```bash
    mvn test
---
# WorkFlows
## Estrutura de Workflows

### Parte 1: Workflows Básicos
- **hello.yml**
  - Disparado em qualquer push.
  - Exibe no log: `"Hello CI/CD"`.
  
- **tests.yml**
  - Disparado em pull_request.
  - Usa `actions/checkout`.
  - Exibe no log: `"Rodando testes"`.
  
- **gradle-ci.yml**
  - Disparado em push para a branch `main`.
  - Executa uma simulação do Maven.

---

### Parte 2: Runners, Variáveis e Segurança
- **env-demo.yml**
  - Exibe variável de ambiente `DEPLOY_ENV=staging`.
  
- **secret-demo.yml**
  - Mostra mensagem `"API_KEY configurado"` sem expor o valor do secret.

- **Explicação**:
  - **Runners hospedados pelo GitHub**: fáceis de usar, sem manutenção, mas tempo limitado por execução.
  - **Runners auto-hospedados**: total controle do ambiente, mais custo e manutenção.

---

### Parte 3: Deploys e Estratégias
- **release-deploy.yml**
  - Disparado em `release published`.
  - Exibe no log: `"Deploy realizado com sucesso"`.

- **matrix-java.yml**
  - Executa workflow em Java 11 e 17.
  - Exibe versão ativa no log.

- **Explicação de estratégias de deploy**:
  - **Blue-Green**: mantém dois ambientes; ideal para deploys que exigem zero downtime.
  - **Rolling Update**: atualiza gradualmente; ideal para clusters grandes onde downtime parcial é aceitável.

---

### Parte 4: Monitoramento e Logs
- **Badge de status**
  - Adicionado no topo do README para indicar o status de um workflow.

- **Logs de debug**
  - Workflow com debug ativo mostrando detalhes adicionais.

- **Explicação**:
  - GitHub Actions permite mascarar dados sensíveis usando `secrets` para que não apareçam nos logs.

---

### Parte 5: Workflow Completo de Deploy
- **deploy.yml**
  - Disparado apenas em push na branch `main`.
  - Utiliza variáveis de ambiente para diferenciar `dev`, `staging` e `prod`.
  - Usa `secrets` para credenciais.
  - Exibe mensagens diferentes dependendo do ambiente.

---

## Como reexecutar os workflows

1. Faça um **push** em qualquer branch → dispara `hello.yml`.
2. Abra um **pull request** → dispara `tests.yml`.
3. Faça push na **branch main** → dispara `gradle-ci.yml` e `deploy.yml`.
4. Crie uma **release** → dispara `release-deploy.yml`.
5. Alterações de variáveis e secrets → refletem nos workflows `env-demo.yml` e `secret-demo.yml`.

---


