class ParticipantePolicy < ApplicationPolicy


	def new?
		return true if @record.encontro.criador_id != @user.id
	end	
end