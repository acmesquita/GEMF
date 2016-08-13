json.extract! usuario, :id, :nome, :data_nascimento, :cpf, :rg, :email, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)