class CreateChamados < ActiveRecord::Migration[6.1]
  def change
    create_table :chamados do |t|
      t.string :descricaoCurta
      t.text :descricaoLonga
      t.integer :estado
      t.date :data_criacao
      t.date :inicio_atendimento
      t.date :fim_atendimento
      t.belongs_to :usuario
      t.belongs_to :departamento

      t.timestamps

      create_table :chamados_categorias, id: false do |t|
        t.belongs_to :chamado
        t.belongs_to :categoria
      end
      
    end
  end
end
