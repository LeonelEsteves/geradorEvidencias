# 📸 Gerador de Evidências

Ferramenta simples para **captura de tela com marca d’água automática**, criada para registrar evidências operacionais de atividades executadas por analistas.

---

## 📌 Objetivo

Facilitar a geração de evidências de trabalho de forma:

* Rápida
* Padronizada
* Sem necessidade de instalação
* Organizada automaticamente por data

---

## ⚙️ Requisitos

* Windows 10 ou superior
* PowerShell habilitado (já incluso no Windows)
* Permissão para executar arquivos `.bat`

---

## 🚀 Como Usar

1. Baixe o arquivo `captura.bat`.
2. Edite a variável `MARCA` com sua identificação.
3. Execute o arquivo com duplo clique.

Pronto. A captura será salva automaticamente.

---

## 🛠️ Personalização

Abra o arquivo e altere a linha:

````bat
set "MARCA=SEU NOME | SUA ÁREA | IDENTIFICAÇÃO"
``` id="p7x8ka"

Exemplo:

```bat
set "MARCA=Fulano de Tal | TI | Matrícula 1234"
``` id="7rt8mc"

Essa informação será exibida como marca d’água na imagem.

---

## 📂 Estrutura Gerada

As capturas são organizadas automaticamente:

``` id="1q5cge"
C:\Users\<usuario>\Capturas\
 └── DD-MM-AAAA\
      ├── print_DATA_HORA.png
      ├── print_DATA_HORA.png
      └── ...
````

Cada execução gera um novo arquivo com data e hora no nome.

---

## ⌨️ (Opcional) Criar Atalho de Teclado

1. Clique com o botão direito no `captura.bat`.
2. Selecione **Criar atalho**.
3. Abra **Propriedades** do atalho.
4. Defina uma **Tecla de Atalho** (ex: `Ctrl + Alt + P`).

Agora você pode capturar a tela instantaneamente via teclado.

---

## 🧠 Como Funciona

O script:

* Captura a tela inteira
* Insere uma marca d’água identificando o usuário
* Nomeia o arquivo com data e hora
* Organiza automaticamente em pastas diárias
* Não instala nada no computador
* Não roda em background

---

## 🔒 Segurança

* Não coleta dados.
* Não envia informações.
* Apenas gera arquivos locais no computador do usuário.

---

## 📷 Exemplo de Saída

Imagem PNG contendo:

* Tela capturada no momento da execução
* Identificação do analista
* Registro visual da atividade

---

## 📄 Licença

Uso interno / corporativo.
Pode ser adaptado conforme necessidade da organização.

---

## 🤝 Contribuição

Sugestões de melhoria são bem-vindas.
Abra uma *issue* ou envie um *pull request*.

---

## 🏷️ Versão

**v1.0 — Script inicial para geração de evidências operacionais**

