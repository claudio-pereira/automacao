
Background:
	Dado que estou no Browser
	Quando eu coloco o endereço do formulario

Cenário: Cadastrar Usuário
	Quando escolho cadastrar um usuário
	E eu preencho todos os campos obrigatórios do formulario
	E clico no botão '<Enviar>'	
	Então o usuário é criado e apresentado e apresentado a tela  com a mensagem "Sua resposta foi registrada."