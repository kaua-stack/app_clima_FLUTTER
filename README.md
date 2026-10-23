# Atividade ClimaApp

## Qual a diferença entre Expanded e Flexible?

Expanded ocupa todo o espaço disponível dentro de uma Row ou Column.

Flexible também ocupa espaço dentro da Row ou Column, mas permite que o widget utilize apenas o tamanho necessário dentro da área disponível.

---

## O que acontece quando possuem flex diferente?

O espaço disponível é dividido de acordo com o valor definido em `flex`.

Exemplo:

- Widget A → `flex: 1`
- Widget B → `flex: 2`

Nesse caso, o Widget B ocupará o dobro do espaço do Widget A.

---


## Widgets pesquisados

| Widget | Para que serve | Propriedades usadas e o que fazem | Link da documentação |
|----------|----------|----------|----------|
| Card | Exibe informações dentro de um cartão visual. | `child`: define o conteúdo do cartão. `elevation`: adiciona sombra ao cartão. | https://api.flutter.dev/flutter/material/Card-class.html |
| ListTile | Organiza informações em uma linha pronta para uso. | `leading`: widget exibido à esquerda. `trailing`: widget exibido à direita. | https://api.flutter.dev/flutter/material/ListTile-class.html |
| GridView.count | Cria uma grade com linhas e colunas. | `crossAxisCount`: define o número de colunas. `shrinkWrap`: ajusta o tamanho da grade ao conteúdo. | https://api.flutter.dev/flutter/widgets/GridView-class.html |
| Stack | Permite sobrepor widgets. | `children`: lista de widgets exibidos. `alignment`: define o alinhamento dos elementos. | https://api.flutter.dev/flutter/widgets/Stack-class.html |
| Positioned | Define a posição de um widget dentro de um Stack. | `top`: distância do topo. `bottom`: distância da parte inferior. | https://api.flutter.dev/flutter/widgets/Positioned-class.html |
| Wrap | Organiza widgets e quebra automaticamente para a próxima linha quando necessário. | `spacing`: espaço horizontal entre widgets. `runSpacing`: espaço vertical entre linhas. | https://api.flutter.dev/flutter/widgets/Wrap-class.html |
| Chip | Exibe etiquetas pequenas com informações. | `label`: texto principal do chip. `avatar`: ícone ou imagem exibida antes do texto. | https://api.flutter.dev/flutter/material/Chip-class.html |

---

## Qual a diferença entre Row/Column e Stack?

Row e Column organizam widgets em sequência, na horizontal ou na vertical.

Stack permite que os widgets fiquem sobrepostos, ocupando a mesma área da tela.

---

## Quando usar cada um?

Use Row quando os elementos precisarem ficar lado a lado.

Use Column quando os elementos precisarem ficar um abaixo do outro.

Use Stack quando for necessário posicionar elementos sobre outros widgets, como um texto ou ícone sobre uma imagem.