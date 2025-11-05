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
2. **Compilar o projeto:**
    ```bash
    mvn clean install
3. **Executar a aplicação:**
    
    ```bash
    mvn spring-boot:run
4. **Acessar a API:**
    ```bash
    http://localhost:7000