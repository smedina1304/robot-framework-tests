# Testes variados com o Robot Framework

## Sobre este repositório no Github: robot-framework-tests

Este projeto foi iniciado com o objetivo de montar e testar modelos da aplicação do _`Robot Framework`_ para apoiar a utilização no dia a dia de profissionais da área de desenvolvimento e testes de softwares.


## Preparação do Ambiente

Para executar este projeto você precisa ter o _`Python`_ e o _`git`_ instalado. O _`Python`_ pode pode ser baixado [aqui](https://www.python.org/downloads/), e o _"command line"_ para o _`git`_ pode ser baixado [aqui](https://git-scm.com/downloads), para mas detalhes procure na _internet_ como instalar o _`Python`_ e o _`git`_ em seu sistema operacional.

<br>

### Copiando o repositório: [  _`git clone`_ ]

Para fazer a cópia deste repositório, selecione uma pasta local em seu computador utilizando _prompt de comandos_ e use o comando abaixo:

```shell
git clone https://github.com/smedina1304/robot-framework-tests.git
```

em seguida acesse a pasta do projeto:

```shell
cd robot-framework-tests
```

## Ambiente Python

Para poder rodar o projeto pelo _`Robot`_ é necessário a instalação de alguns módulos, para isso é indicado a preparação de um ambiente virtual para o _`Python`_ e utilização do arquivo _`requirements.txt`_ para seguir as versões recomendadas dos pacotes.

<br>

### Preparação de um ambiente virtual em Python.

Um ambiente virtual em Python é um diretório isolado que contém seu próprio interpretador Python, bibliotecas e scripts. Ele permite que você gerencie as dependências do seu projeto de forma isolada, evitando conflitos com outros projetos ou com o sistema operacional.

Imagine que você tem dois projetos Python:

- Projeto 1: Requer a biblioteca de um Pacote na versão 1.0.
- Projeto 2: Requer a biblioteca de um Pacote na versão 2.0.

Se você instalar ambas as versões do Pacote diretamente no Python do sistema, poderá ter problemas de compatibilidade entre os projetos, gerando erros nos momentos de executalos.

Um ambiente virtual resolve esse problema. Você pode criar um ambiente virtual para cada projeto e instalar as bibliotecas necessárias com as versões específicas que cada projeto precisa. Dessa forma, os projetos não interferem entre si e evita conflitos.

Para criar o ambiente virtual, esteja na pasta _´robot-framework-tests´_ com o _prompt de comandos_ aberto e entre com a seguinte instrução:

```shell
python -m venv venv
```

<br>

Para ativar este ambiente virtual entre com o seguinte comando conforme o sistema operacional:

- Ativando o ambiente virtual **`"venv"`** no Windows via Powershell.

```shell
.\venv\Scripts\Activate.ps1
```

:point_right: Obs: No windows para funcionamento do **`"venv"`** pode ser necessário executar o seguinte comando via Powershell:

```shell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

<br>

- Ativando o ambiente virtual **`"venv"`** no Windows via CMD.

```shell
.\venv\Scripts\activate.bat
```

<br>

- Ativando o ambiente virtual **`"venv"`** no `Linux` ou `MAC`.

```shell
source ./venv/Scripts/activate
```
<br>

Para verificar que está funcionando e o ambiente foi ativado, deve aparecer o nome do ambiente destacado com prefixo _`venv`_ do seu prompt de comandos.
<br>

Para desativar o ambiente virtual **`"venv"`**:
<br>

```shell
deactivate
```
<br>

:exclamation: **ATENÇÃO:** Este comando deve ser usado apenas quando não for mais necessário a execução no ambiente virtual.

<br>


### Instalação dos pacotes necessários para este projeto.

Todos os Pacotes _`Python`_ com a devida versão utilizada para este projeto estão listados no arquivo _`requirements.txt`_, e podem ser instalados utilizando o comando abaixo:

```shell
pip install -r requirements.txt
```

<br>

### Executando o ROBOT para verificar o resultado dos testes.

O _`Robot`_ é um recurso executado via linha de comando, abaixo seguem alguns exemplos do uso.

- Executa todos os cenários de teste (_suites_).

```shell
robot ./suites
```
<br>

Porem os dados apresentados via console não possibilitam uma navegação com facilidade para analisar cenários de testes numerosos e complexos, e por padrão o _`robot`_ gera 3(três) arquivos com os dados processamento.


```
report.html     > Relatório com dados gerais de cada cenário de teste 
log.html        > Log detalhado de cada cenário de teste
output.xml      > Dados do teste em formato XML
```

Com isso, e para organizar melhor um repositório de saida para armazenamento dos resultados dos testes, como também ser possível uma comparação e acompanhamento diário, foi montado um diretório chamado de  _`report`_, e um script bash ( _`rb.sh`_ ) para facilitar o uso do parametro _`-d`_ para definir como padrão o diretório de gravação dos arquivos do _`robot`_, como também ser implementada uma lógica simples para manter um histórico diário das rodas de teste com o _`robot`_.

Para utilizar o script _`rb.sh`_ segue abaixo o exemplo rodando todos os casos de teste.

```shell
./rb.sh ./suites
```

Em seguida abra o arquivo _`reports/<data do teste>/report.html`_ no seu browser e navegue para analisar os dados gerados nos testes.
