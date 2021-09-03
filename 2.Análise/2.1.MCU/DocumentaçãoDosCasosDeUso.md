# Documentação dos Casos de Uso

## Descrições dos Atores
### Usuário
É quem se beneficia diretamente do sistema, ao cadastrar chamados que serão recebidos pelos técnicos do suporte.

### Técnico
É o ator que recebe e atende aos chamados cadastrados pelos usuários.

### Administrador
É o responsável pela manutenção e gerenciamento do sistema.

## Casos de Uso
### CDU 01: Cadastrar um chamado
- **Descrição:** um usuário pode cadastrar um chamado, fornecendo as informações necessárias através do CDU 02.
- **Pré-condição:** o usuário está logado em sua conta para cadastrar um chamado.
- **Pós-condição:** um chamado será armazenado no sistema e estará visível aos demais atores.
- **Fluxo Principal:** o usuário clica em um botão com a ação de cadastrar novo chamado, abrindo um modal para preenchimento do formulário de cadastro (CDU 02).
- **Fluxo Alternativo/exceção:** o usuário recebe uma mensagem de erro no canto superior da tela, informando falha do sistema ao realizar a ação. 

### CDU 02: Preencher formulário de chamado
- **Descrição:** o usuário pode preencher esse formulário informando o tipo do chamado (Ex: instalar impressora), selecionando tipos pré-cadastrados, além de fornecer demais informações.
- **Pré-condição:** o usuário está com um chamado aberto.
- **Pós-condição:** o formulário será incorporado ao chamado.
- **Fluxo Principal:** o usuário preenche um título, descrição e seleciona as tags que identificam este chamado. O sistema automaticamente inclui os dados do usuário ao armazenar este chamado no banco de dados.
- **Fluxo Alternativo:** o usuário deixa de cadastrar algum dos campos, recebendo uma mensagem de que os campos são obrigatórios.
- **Fluxo de exceção:** o usuário recebe um erro ao clicar no botão de cadastro, após preencher todos os dados, recebendo uma mensagem informando falha do sistema.

### CDU 03: Listar histórico de chamados.
- **Descrição:** o usuário pode listar seus chamados anteriores, apenas para fins de verificação do prazo, ou demais necessidades.
- **Pré-condição:** o usuário está logado em sua conta.
- **Pós-condição:** uma lista de todos chamados do usuário será exibida.
- **Fluxo Principal:** é exibida uma lista com todos os chamados realizados pelo usuário em questão, mostrando todos os dados, além de possibilitar a edição dos chamados que não foram atendidos.
- **Fluxo Alternativo:** caso o usuário não possua chamados, será exibida uma mensagem de "histórico vazio".
- **Fluxo de exceção:** caso não seja possível listar o histórico, devido à erro do sistema, será exibida a mensagem do Fluxo Alternativo. 

### CDU 04: Receber código de acompanhamento.
- **Descrição:** o usuário recebe um código de acompanhamento ao realizar um chamado e, através deste, pode encontrar de forma mais fácil seus chamados no histórico.
- **Pré-condição:** o usuário possui cadastro de um chamado.
- **Pós-condição:** o código será informado.
- **Fluxo Principal:** após efetuar o preenchimento do formulário de chamado e enviá-lo, será exibido na tela o código do chamado. Este que representa seu ID, possibilitando filtrar por este dado no histórico.
- **Fluxo de exceção:** em caso de falha do sistema em gerar este código, este passo será desconsiderado, visto não ser fundamental para execução do fluxo do sistema.

### CDU 05: Alterar chamado
- **Descrição:** o usuário pode alterar alguns dados de seus chamados.
- **Pré-condição:** o usuário possui cadastro de um chamado.
- **Pós-condição:** o chamado possui os dados alterados.
- **Fluxo Principal:** o usuário clica sobre os campos cuja alteração é permitida, sendo eles: título, descrição e tags. Não possibilitando que o usuário altere manualmente o estado de seu próprio chamado.
- **Fluxo de exceção:** o cursor do usuário é alterado ao tentar editar os campos não permitidos. Uma mensagem é retornada em caso de erro do sistema.

### CDU 06: Listar chamados
- **Descrição:** o técnico ou o administrador responsável por uma empresa pode listar os chamados referentes à esta.
- **Pré-condição:** o técnico ou administrador está logado em sua conta.
- **Pós-condição:** uma lista cronológica de todos os chamados cadastrados será exibida.
- **Fluxo Principal:** o técnico ou administrador recebe 3 listas de chamados: chamados pendentes, em andamento e concluídos. Todos ordenados de forma cronológica.
- **Fluxo Alternativo:** Caso não haja chamados na lista em questão, esta recebe uma mensagem informando.
- **Fluxo de exceção:** o técnico ou administrador recebe um erro informando que não foi possível listar os chamados, em caso de erro do sistema.

### CDU 07: Receber aviso de chamados pendentes
- **Descrição:** o técnico pode receber um aviso/notificação de que um chamado pendente ainda não foi concluído.
- **Pré-condição:** o técnico está com um ou mais chamados em aberto.
- **Pós-condição:** um chamado cujo prazo esteja acabando será exibido.
- **Fluxo Principal:** caso um chamado esteja pendente por muito tempo, este ficará em destaque, notificando o técnico através de um toast.
- **Fluxo de exceção:** em caso de erro do sistema, nenhuma ação será realizada na tela do técnico.

### CDU 08: Atender um chamado
- **Descrição:** O técnico pode atender um chamado, resultando na alteração de seu estado (CDU 09).
- **Pré-condição:** o técnico está logado em sua conta e disponivel.
- **Pós-condição:** o chamado terá seu estado ou prazo alterado.
- **Fluxo Principal:** o técnico move o chamado para a lista de "atendendo".
- **Fluxo Alternativo:** o técnico clica no chamado, podendo alterar seu status (CDU 09) de forma mais manual.
- **Fluxo de exceção:** um chamado não pode retroceder ações, esta sendo bloqueada, retornando uma mensagem de erro informando ao técnico ou administrador que executou a ação.

### CDU 09: Alterar estado de um chamado
- **Descrição:** o técnico, o administrador, ou uma ação do sistema pode alterar o estado de um chamado (Ex: concluído, pendente...).
- **Pré-condição:** o técnico estará com uma chamada em aberto; o administrador estará logado em sua conta.
- **Fluxo Principal:** o técnico ou administrador pode clicar sobre um chamado, exibindo um modal com seus dados e possibilitando a alteração direta de seu status.
- **Fluxo de exceção:**  a exceção do CDU 08 é válida para este. Caso ocorra um erro do sistema, será exibida uma mensagem informando da impossibilidade de realizar a ação.

### CDU 10: Gerar relatórios
- **Descrição:** um administrador pode gerar relatórios referente aos atendimentos ou à natureza dos chamados.
- **Pré-condição:** o administrador estará logado em sua conta administrativa.
- **Pós-condição:** o sistema irá coletar as informações pertinentes, gerar os relatórios e mostrá-los.
- **Fluxo Principal:** o administrador pode clicar em gerar relatório, mostrando informações referente a quantidade de chamados atendidos de determinada tag, tempo gasto por chamado e etc...
- **Fluxo de exceção:** em caso de erro do sistema, este não executa nenhuma ação referente à geração dos relatórios, informando um erro para o administrador.

### CDU 11: Cadastrar organização
- **Descrição:** um administrador pode cadastrar sua empresa/organização, sendo este o ambiente ao qual seus usuários (CDU 12) estarão vinculados.
- **Pré-condição:** um administrador está logado em sua conta administrativa.
- **Pós-condição:** os dados da organização serão armazenados no sistema.
- **Fluxo Principal:** ao clicar em cadastrar organização, o administrador deverá informar o nome de sua empresa, email, cnpj e telefone para contato.
- **Fluxo de exceção:** em caso de exceção, será mostrada uma mensagem de erro, seja por validação dos campos ou por falha do sistema. Em caso de falha de validação, o campo inválido ficará destacado em vermelho.

### CDU 12: Gerenciar técnicos e usuários cadastrados
- **Descrição:** um administrador pode gerenciar e vincular usuários à sua empresa, delimitando o(s) técnico(s) que receberá chamados dos usuários à esta pertencentes.
- **Pré-condição:** um administrador está logado em sua conta administrativa.
- **Pós-condição:** os usuários e técnicos serão removidos/adicionados/modificados e as alterações serão armazenados no sistema.
- **Fluxo Principal:** o administrador deve preencher o Nome, Email, Função, Departamento e o tipo de usuário deste que está sendo cadastrado. Tipos disponíveis: usuário, técnico e administrador.
- **Fluxo de exceção:** o administrador receberá uma mensagem de erro em caso de falha do sistema.

### CDU 13: Cadastrar categorias de chamados
- **Descrição:** um administrador pode cadastrar as categorias/tipos de um chamado (Ex: instação de impressora, substituição de teclado, etc...)
- **Pré-condição:** um administrador está logado em sua conta administrativa.
- **Pós-condição:** a nova categoria será armazenada no sistema.
- **Fluxo Principal:** o administrador pode cadastrar as tags que serão usadas, indicando o tipo de chamado que será possível cadastrar. Devendo apenas preencher o nome a ser disposto na tag.
- **Fluxo Alternativo:** caso a tag digitada já se encontre cadastrada, o administrador não receberá mensagens de aviso, o sistema apenas seguirá o fluxo padrão como se estivesse sido criada.
- **Fluxo de exceção:** o administrador receberá uma mensagem de erro em caso de falha do sistema.

### CDU 14: Definir prioridades
- **Descrição:** um administrador pode definir a prioridade de uma categoria, informando ao técnico o prazo esperado para que este tipo de chamado seja atendido
- **Pré-condição:** um administrador estará logado em sua conta administrativa.
- **Pós-condição:** as alterações de prioridade serão armazenadas no sistema.
- **Fluxo Principal:** o administrador poderá informar a prioridade dada para cada tag. Em caso de duas tags serem usadas juntas, a prioridade será somada. A prioridade é um valor numérico informando a quantidade de horas em que a tarefa deve ser realizada. O sistema utilizará uma regra interna para definir se a quantidade de horas informada se classifica como: alta prioridade, média ou baixa.
- **Fluxo de exceção:** em caso de erro de validação ou do sistema, o administrador receberá uma mensagem informando.

### CDU 15: Gerenciar chamados
- **Descrição:** um administrador pode gerenciar chamados, inclusive alterando o estado destes.
- **Pré-condição:** um administrador estará logado em sua conta administrativa.
- **Pós-condição:** os chamados serão removidos/adicionados/modificados e as alterações serão armazenadas no sistema.
- **Fluxo Principal:** gerenciar chamados indica a permissão de listar, alterar ou atender um chamado. No caso do administrador, as 2 primeiras são mais importantes, porém ele terá acesso à todas.
- **Fluxo de exceção:** exceção será referente ao caso de uso em questão: listar, atender ou alterar estado.

### CDU 16: Calcular estatística de chamados atendidos
- **Descrição:** um administrador pode gerar relatórios, o que acaba por executar esta tarefa em fundo..
- **Pré-condição:** um administrador estará logado em sua conta administrativa e clicou em gerar relatório.
- **Pós-condição:** os relatórios serão apresentados.
- **Fluxo Principal:** ao clicar em gerar relatório, esta tarefa executará calculos interessantes para apresentar nos relatórios, como: Quantidade de chamados com determinada tag, quantidade de chamados realizados por usuário e frequência geral de criação de chamados.
- **Fluxo de exceção:** em caso de erro de validação ou do sistema, o administrador receberá uma mensagem informando ao realizar a ação de gerar relatório.

### CDU 17: Calcular frequência de chamados com determinada tag
- **Descrição:** um administrador pode gerar relatórios, o que acaba por executar esta tarefa em fundo..
- **Pré-condição:** um administrador estará logado em sua conta administrativa e clicou em gerar relatório.
- **Pós-condição:** os relatórios serão apresentados.
- **Fluxo Principal:** ao clicar em gerar relatório, esta tarefa executará cálculos referentes ao tempo médio de atendimento para cada tag cadastrada no sistema.
- **Fluxo de exceção:** em caso de erro de validação ou do sistema, o administrador receberá uma mensagem informando ao realizar a ação de gerar relatório.

### CDU 18: Calcular tempo médio de atendimento de chamados semelhantes
- **Descrição:** um administrador pode gerar relatórios, o que acaba por executar esta tarefa em fundo..
- **Pré-condição:** um administrador estará logado em sua conta administrativa e clicou em gerar relatório.
- **Pós-condição:** os relatórios serão apresentados.
- **Fluxo Principal:** ao clicar em gerar relatório, esta tarefa executará cálculos referentes ao tempo de atendimento de chamados considerados semelhantes. O sistema considera semelhantes se: possuem a mesma tag, palavras semelhantes no título ou mesma tag e mesmo usuário.
- **Fluxo de exceção:** em caso de erro de validação ou do sistema, o administrador receberá uma mensagem informando ao realizar a ação de gerar relatório.
