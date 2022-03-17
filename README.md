### Conceitos de CI/CDTODAS AS CAMADAS
Com o método contínuo de desenvolvimento de software, você cria, testa e implanta continuamente alterações de código iterativas. Esse processo iterativo ajuda a reduzir a chance de você desenvolver um novo código com base em versões anteriores com erros ou falhas. Com este método, você se esforça para ter menos intervenção humana ou até mesmo nenhuma intervenção, desde o desenvolvimento do novo código até sua implantação.

As três principais abordagens para o método contínuo são:

- Integração contínua
- Entrega Contínua
- Implantação Contínua

### Integração contínua
Considere um aplicativo que tem seu código armazenado em um repositório Git no GitLab. Os desenvolvedores enviam alterações de código todos os dias, várias vezes ao dia. Para cada push para o repositório, você pode criar um conjunto de scripts para construir e testar seu aplicativo automaticamente. Esses scripts ajudam a diminuir as chances de você introduzir erros em seu aplicativo.

Essa prática é conhecida como Integração Contínua . Cada mudança submetida a uma aplicação, mesmo para ramificações de desenvolvimento, é construída e testada de forma automática e contínua. Esses testes garantem que as alterações sejam aprovadas em todos os testes, diretrizes e padrões de conformidade de código que você estabeleceu para seu aplicativo.

### Entrega Contínua
A Entrega Contínua é um passo além da Integração Contínua. Não apenas seu aplicativo é criado e testado cada vez que uma alteração de código é enviada para a base de código, o aplicativo também é implantado continuamente. No entanto, com a entrega contínua, você aciona as implantações manualmente.

A Entrega Contínua verifica o código automaticamente, mas requer intervenção humana para acionar manual e estrategicamente a implantação das alterações.

### Implantação Contínua
A Implantação Contínua é outro passo além da Integração Contínua, semelhante à Entrega Contínua. A diferença é que, em vez de implantar seu aplicativo manualmente, você o define para ser implantado automaticamente. A intervenção humana não é necessária.

### GitLab CI/CD
GitLab CI/CD é a parte do GitLab que você usa para todos os métodos contínuos (Integração, Entrega e Implantação Contínua). Com o GitLab CI/CD, você pode testar, criar e publicar seu software sem a necessidade de aplicativos ou integração de terceiros.

### Gitlab-Runner Shell

gitlab-runner register -n \
  --url https://gitlab.com \
  --registration-token TOKEN-AQUI \
  --executor shell \
  --description "Runner Shell NOME-DO-SERVER"
