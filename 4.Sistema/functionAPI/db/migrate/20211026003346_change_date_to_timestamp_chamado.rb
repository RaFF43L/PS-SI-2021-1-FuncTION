class ChangeDateToTimestampChamado < ActiveRecord::Migration[6.1]
  def change
    change_column :chamados, :inicio_atendimento, :datetime
    change_column :chamados, :fim_atendimento, :datetime
  end
end
