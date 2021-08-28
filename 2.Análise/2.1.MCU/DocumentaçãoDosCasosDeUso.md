# Documentação dos Casos de Uso

## Sumário

## Descrições dos Atores
### Usuário

### Técnico

### Administrador

## Casos de Uso
### CDU 01: Cadastrar um chamado
- Um usuário pode cadastrar um chamado, fornecendo as informações necessárias através do CDU 02.
- O usuário estará logado em sua conta para cadastrar um chamado.
### CDU 02: Preencher formulário de chamado
- O usuário deve preencher este formulário informando o tipo do chamado (Ex: instalar impressora), selecionando tipos pré-cadastrados, além de fornecer demais informações
- o usuário estará com um chamado aberto
### CDU 03: Listar histórico de chamados.
- O usuário pode listar seus chamados anteriores, apenas para fins de verificação do prazo, ou demais necessidades.
- o usuário estará logado em sua conta para realizar a listagem do histórico
### CDU 04: Receber código de acompanhamento.
- O usuário recebe um código de acompanhamento ao realizar um chamado, através deste, pode encontrar de forma mais fácil seus chamados no histórico.
- o usuário possui cadastro de um chamado.
### CDU 05: Fornecer identificação
- O usuário deve fornecer identificação, além das informações técnicas do chamado(CDU 02).
- o usuário possui cadastro de um chamado.
### CDU 06: Listar chamados
- O técnico ou o administrador responsável por uma empresa pode listar os chamados referentes à esta.
- o técnico ou administrador estará logando em sua conta.
### CDU 07: Receber aviso de chamados pendentes
- O técnico pode receber um aviso/notificação de que um chamado pendente ainda não foi concluído.
- O técnico estará com uma chamada em aberto.
### CDU 08: Atender um chamado
- O técnico pode atender um chamado, resultando na alteração de seu estado (CDU 09)
- O técnico estará logado em sua conta e disponivel.
### CDU 09: Alterar estado de um chamado
- O técnico ou uma ação do sistema pode alterar o estado de um chamado (Ex: concluído, pendente...).
- o técnico estará com uma chamada em aberto.
### CDU 10: Gerar relatórios
- Um administrador pode gerar relatórios referente aos atendimentos ou à natureza dos chamados.
- O administrador estará logado em sua conta administrativa.
### CDU 11: Cadastrar organização
- Um administrador pode cadastrar sua empresa/organização, sendo este o ambiente ao qual seus usuários (CDU 12) estarão vinculados
- um administrador estará logado em sua conta administrativa.
### CDU 12: Gerenciar técnicos e usuários cadastrados
- Um administrador pode gerenciar e vincular usuários à sua empresa, delimitando o técnico que receberá chamados dos usuários à esta pertencentes.
- um administrador estará logado em sua conta administrativa.
### CDU 13: Cadastrar categorias de chamados
- Um administrador pode cadastrar as categorias/tipos de um chamado (Ex: instação de impressora, substituição de teclado, etc...)
- um administrador estará logado em sua conta administrativa.
### CDU 14: Definir prioridades
- Um administrador pode definir a prioridade de uma categoria, informando ao técnico o prazo esperado para que este tipo de chamado seja atendido
- um administrador estará logado em sua conta administrativa.
### CDU 15: Gerenciar chamados 
- Um administrador pode gerenciar chamados, alterando o estado destes.
- um administrador estará logado em sua conta administrativa.
