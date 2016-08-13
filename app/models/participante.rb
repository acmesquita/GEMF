class Participante < ApplicationRecord 
	extend Enumerize
	
  belongs_to :encontro
  belongs_to :usuario

  enumerize :tipo_pagamento, in: [:dinheiro, :deposito], i18n_scope: "tipo_pagamento"

end
