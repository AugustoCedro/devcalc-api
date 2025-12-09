# devcalc-api

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