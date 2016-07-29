json.extract! participante, :id, :nome, :nascimento, :cpf, :rg, :email, :valor_pago, :tipo_pagamento, :created_at, :updated_at
json.url participante_url(participante, format: :json)