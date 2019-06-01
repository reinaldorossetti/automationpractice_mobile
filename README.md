## Iniciando a Automação de Testes com Appium. O Appium foi desenvolvido pelo mesmo grupo do Selenium, vou citar alguém em especial o Kazuaki MATSUO, apelido de KazuCocoa, como eu acompanho direto a comunidade ele é o cara que dar manutenção no Appium Client em Ruby todas as novidades ele é o cara, atualmente implementou várias novidades uma delas é Opencv dentro do Appium.

#### Pre-conditions (Precisamos primeiro instalar as Ferramentas/Softwares):

    Ruby 2.4.4 or 2.5.5 (Agora parece estar melhor 2.5 na sub-release 5)
    -> Windows (https://rubyinstaller.org/downloads/)
    -> Linux (sudo apt-get install ruby-full)
    -> MAC (brew install ruby)
    Install Git (https://git-scm.com/downloads)
    Install nodejs (https://nodejs.org/en/download/)

Ruby - Linguagem de Programação que vamos usar.  
Git - Nosso projeto será versionado, ou seja o código fonte vai ser armazendo em versões (distributed version control system).  
Nodejs - O Appium Server é puro JavaScript e algumas partes em Java, algumas coisas estão em .jar como alguns drivers.  


## Appium-doctor
Verifica se todas as dependências do Appium são atendidas e se todas as dependências estão configuradas corretamente. Para instalar o appium-doctor basta colar no seu terminal:
```bash
npm install -g appium-doctor  # instalar o appium-doctor
```
Uma vez que o node.js, npm e o appium-doctor estão instalados, você pode usar o comando abaixo para verificar se todas as dependências do appium são atendidas:

```bash
appium-doctor             # verificar todas as dependencias necessárias para usar o appium
appium-doctor --android   # verificar as dependências somente para android
appium-doctor --ios       # verificar as dependências somente para ios
```

## Instalando o Appium

### Appium Server
O Appium posso dizer que é dividido em duas partes Client e Server. O Client que é a Biblioteca que vai desenvolver os comandos, a mesma é dividido em duas (appium_lib, appium_lib_core), appium_lib ela depende do appium_lib_core, e a appium_lib_core depede do selenium-webdriver. Podemos afirmar que existe várias dependencias uma vez instalada da forma errada vai dar problema no Appium.

Por isso colocamos as versões no gemfile para não ter erro:
```ruby
source 'http://rubygems.org'

gem 'appium_lib', '~>10.3.1'
gem 'appium_lib_core', '~> 3.1.2'
gem 'selenium-webdriver', '~>3.142.3'
gem 'cucumber', '~>3.1.2'
gem 'rspec', '3.8.0'
gem 'rspec-retry'
gem 'ffi', '~> 1.11', '>= 1.11.1'
gem 'pry', '~> 0.12.2'
```

Execute o comando abaixo para instalar o Appium:
```bash
npm install -g appium
```

Após o término, vamos iniciar o servidor do Appium. No linux é indicado a usar o Sudo para dar as permissões.

No Windows abra o terminal como Admin e digite o comamdo abaixo: 
```bash
appium
```

Linux:
```bash
sudo appium
```

> Para atualizar o Appium, você precisará executar `npm update -g appium`.

## Agora vamos ao Projeto de Fato:

### 1. Download Project
```shell
git clone https://github.com/reinaldorossetti/automationpractice_mobile.git
cd automationpractice_mobile
```

### 2. Installing gems
To install All gems ():
```shell
bundle install
```

### 3. Run Tests: 
Type this in the tests folder:
```shell
bundle exec cucumber
```
### Run with tags
Type this in the tests folder:
```shell
bundle exec cucumber --tags @run
```
Or
```shell
bundle exec cucumber -t @run
```

### Basic Structure Project:

**Specfications:** Where is the functionality of the project.

**Steps Definitions:** Where the actual tests are performed.

**Pages:** Where the elements and methods of a particular page are mapped.

**Support:** Where is the project settings.

**Results:** Where is the result of the tests and reports.

**Data:** Mass of Data for tests.

 **Framework:** The framework folder contains classes or modules with global functions to reduce code in Pages.


### Basic BDD:
Cucumber executes executable specifications written in plain language and produces reports indicating whether the software behaves according to the specification or not.
- **Feature** The purpose of the Feature keyword is to provide a high-level description of a software feature, and to group related scenarios.
- **Scenario** is a written example to illustrate a specific aspect of application behavior.
- Each step starts with Given, When, Then, And, or But. 
- **Given** steps are used to describe the initial context of the system.  
- **When** steps are used to describe an event, or an action.  
- **Then** steps are used to describe an expected outcome, or result.  
- **And, But** use If you have several Given’s, When’s, or Thens.
- **Data Tables** are handy for passing a list of values to a step definition.

**To know if your bdd is long, it should contain up to 5 steps of the same type.**


### Logs:  
In computing, data logging is an expression used to describe the process of recording relevant events in a computer system.  

- Generates Cucumber HTML Report with logs.  
- Get the browser and Selenium logs.  

### References:  
https://docs.cucumber.io/gherkin/reference/  
https://github.com/ruby/rake

