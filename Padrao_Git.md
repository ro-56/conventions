
# Convenções para git (commits, pull requests, etc.)

Adaptação fortemente baseada nos seguintes projetos:
- [Angular](https://github.com/angular/angular)
- [AngularJS commit message format](https://docs.google.com/document/d/1QrDFcIiPjSLDn3EL15IJygNPiHORgU1_OOAqWjiDU5Y/edit#)
- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
- [How to Split Pull Requests](https://www.thedroidsonroids.com/blog/splitting-pull-request)


## <a name="obj"></a> Objetivos

Estabelecer regras de como cada commit deve ser formatada ajuda na leitura do histórico de *commits*, facilita na criação, acompanhamento e revisão de *pull requests*, além de possibilitar a geração automática do histórico de alterações de cada release.


## <a name="commit"></a> Commit Message Format

Cada mensagem de commit deve possuir as seguintes partes:

```
<header>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

O campo `header` é obrigatório, e deve estar de acordo com o [formato padrão de cabeçalho](#commit-header).

O campo `body` é opcional, mas recomendado.

O campo `footer` é obrigatório(?) para todos os escopos, com exceção do "[WIP > Definir exceções: version bump, hot fixes(?), etc]".



#### <a href="commit-header"></a>Formato padrão de cabeçalho
```
<type>(<scope>): <short summary>
  │       │             │
  │       │             └─⫸ Sumário no presente. Não capitalizado. Sem ponto no final
  │       │
  │       └─⫸ Escopo: [WIP]
  │
  └─⫸ Tipo de commit: feat|fix|refactor|style|perf|docs [WIP > build|ci|docs|feat|fix|perf|refactor|style|test]
```
Os campos `<type>` e `<summary>` são obrigatórios, o campo `(<scope>)` é opcional.
##### Tipos

Deve ser um entre os citados abaixo:

* **feat**: Uma nova feature
* **fix**: Um ajuste de um bug
* **refactor**: Uma alteração que não adiciona uma nova feature e não arruma nenhum bug
* **style**: Mudanças que não mudam o sentido do código (espaçamento, formatação, falta de ponto e vírgula, etc)
* **perf**: Uma mudança que melhora performance
* **docs**: Apenas mudanças em documentações

##### Escopo [WIP] (? Necessário ?)

O escopo deve apresentar o módulo onde foi feita a alteração. Ele depende de como está organizado cada projeto, podendo ser adaptado para as necessidades de cada equipe.

Exemplos de possíveis escopos:

* `main`: usado para mudanças no módulo principal
* `mm`: usado para mudanças no módulo de modelo matemático
* `int`: usado para mudanças no módulo de integração
* `gui`: usado para mudanças no módulo de interface gráfica
* `bi`: usado para mudanças no módulo de bibliotecas internas

No caso alterações em múltiplos módulos, ou de alterações que não possuem módulos específicos, podem ser usados os seguintes escopos:

* `xml`: usado para mudanças em arquivos `.xml`
* `java`:  usado para mudanças em arquivos  `.jar`
* `changelog`: usado para mudanças no CHANGELOG.md
* nada/vazio: útil para mudanças em diversos pacotes (ex. `style: adiciona ponto e vírgula que faltavam`) e para mudanças em documentações, que não dizem respeito a nenhum módulo específico (ex. `docs: corrige erro ortográfico no README.md`)

##### Sumário

Utilize do campo de sumário para providenciar uma descrição resumida das alterações:

* use do imperativo, no presente: "modifica" não "modificado" ou "modificação"
* não capitalize a primeira letra
* não use ponto (.) no final


#### <a href="commit-body"></a>Formatação do Corpo [WIP]



#### <a href="commit-footer"></a>Formatação do Rodapé [WIP]

O rodapé permite adicionar tokens que ajudam a relacionar cada *commit* com tickets/cards, sprint, autor, etc. Para isso, ele deve ser formatado da seguintes maneira:

`<token>: <value>`

Isso significa que os campos <token> e <value> devem ser separados por `': '` (dois pontos seguidos de um espaço).

Exemplos de possíveis trailers:

- `Jira: `

e.g.:

- `Jira: ABC-123`

## <a name="pull-request"></a> Pull Request Format [WIP]

Pull requests são compostos por duas partes:

- Título: Resumo do que está incluso no pull request
- Descrição: Explicação com mais detalhes do PR para o revisor

#### Título:

- Resumo curto e descritivo
- Inclua no início o ticket/card correspondente ao PR
- Deve ser utilizados verbos imperativos no presente
- Não use ponto (.) no final

Formato sugerido para títulos:
`Ticket_ID: Descrição do PR`

Exemplo:
`ABC-123: Adiciona integração de unidades produtivas`

#### Descrição:

- Explicar detalhadamente o que mudou, por que, etc.
- Sempre que possível, adicione as instâncias que foram utilizadas para teste

#### Dicas
###### Providencie descrições que façam sentido

A seção de descrição é onde o autor deve informar o revisor do porque o PR foi aberto; quanto mais informações forem providenciadas, mais facil será o trabalho de revisão.

- "Porque?" Porque esse novo código é necessário? Contextualizar ajuda o revisor a entender mais claramente o que ele está prestes a encontrar;
- "Como?" Providencie uma lista com as *commits* mais importantes, descrevendo mais a fundo caso necessário.

###### Revise seu próprio PR antes de atribuir a um revisor

Tenha certeza que seu código esteja em dia com as últimas alterções na *branch develop*; resolva os conflitos que podem existir, para que realizar o *merge* seja tão simples quanto apertar apenas um botão.


###### Faça pull requests menores

Fazer [PRs menores](#pr-strategy) é um dos melhores modos de acelerar a fase de revisão. Por serem pequenos, é mais fácil para o revisor entender o contexto e o motivo da mudança a ser integrada.


#### <a name="pr-strategy"></a> Estratégias de criação de Pull Requests [WIP]
Existem diversas estretégias para a criação de Pull Requests, podendo ser utilizada a que melhor satizfaz as necessidades de cada projeto. Em seguida são apresentadas algumas dessas estretégias.

- Milestone:
```
[ ] ⫷─(PR Grande, já verificado)─┐
 ˄                                │
 │                                │
 │                                │
 │          [C5]─── (PR 3) ───⫸ [M3]
 │           ˄                    ˄
 │          [C4]─── (PR 2) ───⫸ [M2]
 │           ˄                    ˄
 │          [C3]                  │
 │           ˄                    │
 │          [C2]─── (PR 1) ───⫸ [M1]
 │           ˄                    ˄
 │          [C1]                  │
 │           ˄                    │
 ├───────────┴────────────────────┘
[ ]     Branch ativa        Branch Temporária
```

O objetivo dessa estretégia é separar o desenvolvimento de uma *branch* em diversos PRs, cada um contendo um marco do desenvolvimento.

Útil para os casos nos quais as commits posteriores dependem das anteriores, mas criar um PR com tudo o tornaria grande.

## FAQ

##### O que eu faço se o commit estiver de acordo com mais de um dos tipos?

Volte e faça vários commits sempre que possível. Parte do benefício do Conventional Commits é a capacidade de nos levar a fazer commits e PRs mais organizados.

##### Isso não desencoraja o desenvolvimento rápido e a iteração rápida?

Desencoraja a movimentação rápida de forma desorganizada. Ele ajuda você a ser capaz de se mover rapidamente a longo prazo em vários projetos com vários colaboradores.

## Observações importantes

Essas convenções são propostas para facilitar o desenvolvimento e a manutenção de projetos. Portanto, caso seja necessário, podem ser alteradas de acordo com o que é exigido. As alterações feitas devem então ser apresentadas em um outro arquivo que acompanhe o projeto e devem ser referenciadas no início desse documento, facilitando o acesso a todos os envolvidos.

Todos estão convidados a contribuir com essas convenções. Caso possua qualquer sugestão de melhoria, encaminhe para um dos desenvolvedores responsáveis.

## TODO
 * [ ] Commits
   * [ ] Header
	   * [x] Tipos
	   * [ ] Escopos
	   * [x] Sumário
   * [ ] Body
   * [x] Footer
 * [ ] Pull Requests
 * [ ] Geração do arquivo CHANGELOG.md
