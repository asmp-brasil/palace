# frozen_string_literal: true

# TODO: Add i18n on future if needed

class MedicsController < PublicController
  def new
    @medic = Medic.new
  end

  def create
    @medic = Medic.new(medic_params)

    if @medic.save
      flash[:notice] = 'Cadastro realizado com sucesso!'
      render action: :new
    end

    flash.now[:error] = 'Existem alguns dados com erro no cadastro'
    render action: :new
  end

  private

  def medic_params
    params.require(:medic).permit(:name, :crm, :phone, :email, :profession)
  end
end
