class EncontroPolicy < ApplicationPolicy


  def inscreve?
    return true if @record.criador_id != @user.id
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