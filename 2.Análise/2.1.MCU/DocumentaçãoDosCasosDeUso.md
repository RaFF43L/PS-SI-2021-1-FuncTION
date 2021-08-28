# Documentação dos Casos de Uso

## Sumário

## Descrições dos Atores
### Usuário

### Técnico

### Administrador

## Casos de Uso
### CDU 01: Cadastrar um chamado
- Um usuário pode cadastrar um chamado, fornecendo as informações necessárias através do CDU 02.
### CDU 02: Preencher formulário de chamado
- O usuário deve preencher este formulário informando o tipo do chamado (Ex: instalar impressora), selecionando tipos pré-cadastrados, além de fornecer demais informações
### CDU 03: Listar histórico de chamados
- O usuário pode listar seus chamados anteriores, apenas para fins de verificação do prazo, ou demais necessidades.
### CDU 04: Receber código de acompanhamento
- O usuário recebe um código de acompanhamento ao realizar um chamado, através deste, pode encontrar de forma mais fácil seus chamados no histórico.
### CDU 05: Fornecer identificação
- O usuário deve fornecer identificação, além das informações técnicas do chamado(CDU 02).
### CDU 06: Listar chamados
- O técnico ou o administrador responsável por uma empresa pode listar os chamados referentes à esta.
### CDU 07: Receber aviso de chamados pendentes
- O técnico pode receber um aviso/notificação de que um chamado pendente ainda não foi concluído.
### CDU 08: Atender um chamado
- O técnico pode atender um chamado, resultando na alteração de seu estado (CDU 09)
### CDU 09: Alterar estado de um chamado
- O técnico ou uma ação do sistema pode alterar o estado de um chamado (Ex: concluído, pendente...).
### CDU 10: Gerar relatórios
- Um administrador pode gerar relatórios referente aos atendimentos ou à natureza dos chamados.
### CDU 11: Cadastrar organização
- Um administrador pode cadastrar sua empresa/organização, sendo este o ambiente ao qual seus usuários (CDU 12) estarão vinculados
### CDU 12: Gerenciar técnicos e usuários cadastrados
- Um administrador pode gerenciar e vincular usuários à sua empresa, delimitando o técnico que receberá chamados dos usuários à esta pertencentes.
### CDU 13: Cadastrar categorias de chamados
- Um administrador pode cadastrar as categorias/tipos de um chamado (Ex: instação de impressora, substituição de teclado, etc...)
### CDU 14: Definir prioridades
- Um administrador pode definir a prioridade de uma categoria, informando ao técnico o prazo esperado para que este tipo de chamado seja atendido
### CDU 15: Gerenciar chamados
- Um administrador pode gerenciar chamados, alterando o estado destes.
