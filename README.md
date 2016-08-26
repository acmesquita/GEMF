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
	x Autorização
	- Validações:
		- Validações dos campos obrigatórios
		- A quantidade de inscritos não pode ser maior que o número máximo de participantes cadastrado no encontro
		- Cada participante não pode pagar mais que o valor do encontro
		- Não permitir que a data da inscrição não passe do último dia do encontro
		- Somente o perfil administrador pode:
			x alterar o valor pago pelo participante
			x visualizar os encontros cadastrados por ele
			x alterar as informações do encontro
		- Somente o perfil comum pode alterar o seu cadastro
		- Deve ser exibido para o usuário comum se há vagas disponíveis para o encontro
	- Montar o Perfil para o usuário:
		- Atualizar o cadastro
		- Visualizar os dados cadastrados

### Melhorias

	x Melhorar interface telas:
		x Exibição do encontro
		x Formulários
		x Telas de Login e Logout