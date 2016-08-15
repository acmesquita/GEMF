# README

### Funcionalidades

	x Cadastrar um encontro
	x Cadastrar um participante
	x Cadastrar um usuário
	x Associar um usuário a encontro através de um participante
	x Associar um encontro a um participante
	x Exibir todos os participantes na tela de exibição do encrontro.
	x Atualizar somente o campo valor e tipo de pagamento do participante na tabela.
	x Atenticação
	- Autorização
	- Validações:
		- Validações dos campos obrigatórios
		- A quantidade de inscritos não pode ser maior que o número máximo de participantes cadastrado no encontro
		- Cada participante não pode pagar mais que o valor do encontro
		- Não permitir que a data da inscrição não passe do último dia do encontro
		- Somente o perfil administrador pode:
			- alterar o valor pago pelo participante
			- cadastrar um encontro
			- visualizar os encontros cadastrados por ele
			- alterar as informações do encontro
		- Somente o perfil comum pode alterar o seu cadastro
		- Deve ser exibido para o usuário comum se há vagas disponíveis para o encontro


### Melhorias

	- Melhorar interface telas:
		- Exibição do encontro
		- Formulários
		- Telas de Login e Logout