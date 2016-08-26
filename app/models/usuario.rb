class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :participantes

	def participa? (encontro, user)
		Participante.where('encontro_id', encontro.id, 'usuario_id', user.id).exists?
	end
end
