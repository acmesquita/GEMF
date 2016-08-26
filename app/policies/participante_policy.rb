class ParticipantePolicy < ApplicationPolicy


	def new?
		return true if @record.encontro.criador_id != @user.id
	end	

	def create?
		return true if Participante.where('encontro_id', @record.encontro_id).where('usuario_id', @user.id).count() < 1
	end
end