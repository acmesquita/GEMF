class EncontroPolicy < ApplicationPolicy


  def inscreve?
    return true if @record.criador_id != @user.id
  end

  def inscrito?
    return true if Participante.where('encontro_id',@record.id).where('usuario_id',@user.id).count() < 1
  end

  def edita?
    return true if @record.criador_id == @user.id
  end

  def deleta?
    return true if @record.criador_id == @user.id
  end

  def show?
    return true if @record.criador_id == @user.id
  end

end