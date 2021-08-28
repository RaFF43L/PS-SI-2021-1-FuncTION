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

### CDU 02: Preencher formulário de chamado
- **Descrição:** o usuário pode preencher esse formulário informando o tipo do chamado (Ex: instalar impressora), selecionando tipos pré-cadastrados, além de fornecer demais informações.
- **Pré-condição:** o usuário está com um chamado aberto.
- **Pós-condição:** o formulário será incorporado ao chamado.

### CDU 03: Listar histórico de chamados.
- **Descrição:** o usuário pode listar seus chamados anteriores, apenas para fins de verificação do prazo, ou demais necessidades.
- **Pré-condição:** o usuário está logado em sua conta.
- **Pós-condição:** uma lista de todos chamados do usuário será exibida.

### CDU 04: Receber código de acompanhamento.
- **Descrição:** o usuário recebe um código de acompanhamento ao realizar um chamado e, através deste, pode encontrar de forma mais fácil seus chamados no histórico.
- **Pré-condição:** o usuário possui cadastro de um chamado.
- **Pós-condição:** o código será informado.

### CDU 05: Fornecer identificação
- **Descrição:** o usuário, técnico ou administrador podem fazer login no sistema.
- **Pré-condição:** o usuário, técnico ou administrador possui cadastro no sistema.
- **Pós-condição:** o usuário, técnico ou administrador estará logado e apto a interagir com as partes do sistema a que tem acesso.

### CDU 06: Listar chamados
- **Descrição:** o técnico ou o administrador responsável por uma empresa pode listar os chamados referentes à esta.
- **Pré-condição:** o técnico ou administrador está logado em sua conta.
- **Pós-condição:** uma lista cronológica de todos os chamados cadastrados será exibida.

### CDU 07: Receber aviso de chamados pendentes
- **Descrição:** o técnico pode receber um aviso/notificação de que um chamado pendente ainda não foi concluído.
- **Pré-condição:** o técnico está com um ou mais chamados em aberto.
- **Pós-condição:** um chamado cujo prazo esteja acabando será exibido.

### CDU 08: Atender um chamado
- **Descrição:** O técnico pode atender um chamado, resultando na alteração de seu estado (CDU 09).
- **Pré-condição:** o técnico está logado em sua conta e disponivel.
- **Pós-condição:** o chamado terá seu estado ou prazo alterado.

### CDU 09: Alterar estado de um chamado
- **Descrição:** o técnico, o administrador, ou uma ação do sistema pode alterar o estado de um chamado (Ex: concluído, pendente...).
- **Pré-condição:** o técnico estará com uma chamada em aberto; o administrador estará logado em sua conta.

### CDU 10: Gerar relatórios
- **Descrição:** um administrador pode gerar relatórios referente aos atendimentos ou à natureza dos chamados.
- **Pré-condição:** o administrador estará logado em sua conta administrativa.
- **Pós-condição:** o sistema irá coletar as informações pertinentes, gerar os relatórios e mostrá-los.

### CDU 11: Cadastrar organização
- **Descrição:** um administrador pode cadastrar sua empresa/organização, sendo este o ambiente ao qual seus usuários (CDU 12) estarão vinculados.
- **Pré-condição:** um administrador está logado em sua conta administrativa.
- **Pós-condição:** os dados da organização serão armazenados no sistema.

### CDU 12: Gerenciar técnicos e usuários cadastrados
- **Descrição:** um administrador pode gerenciar e vincular usuários à sua empresa, delimitando o(s) técnico(s) que receberá chamados dos usuários à esta pertencentes.
- **Pré-condição:** um administrador está logado em sua conta administrativa.
- **Pós-condição:** os usuários e técnicos serão removidos/adicionados/modificados e as alterações serão armazenados no sistema.

### CDU 13: Cadastrar categorias de chamados
- **Descrição:** um administrador pode cadastrar as categorias/tipos de um chamado (Ex: instação de impressora, substituição de teclado, etc...)
- **Pré-condição:** um administrador está logado em sua conta administrativa.
- **Pós-condição:** a nova categoria será armazenada no sistema.

### CDU 14: Definir prioridades
- **Descrição:** um administrador pode definir a prioridade de uma categoria, informando ao técnico o prazo esperado para que este tipo de chamado seja atendido
- **Pré-condição:** um administrador estará logado em sua conta administrativa.
- **Pós-condição:** as alterações de prioridade serão armazenadas no sistema.

### CDU 15: Gerenciar chamados
- **Descrição:** um administrador pode gerenciar chamados, inclusive alterando o estado destes.
- **Pré-condição:** um administrador estará logado em sua conta administrativa.
- **Pós-condição:** os chamados serão removidos/adicionados/modificados e as alterações serão armazenadas no sistema.
