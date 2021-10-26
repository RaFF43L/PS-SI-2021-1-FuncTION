class CreateDepartamentos < ActiveRecord::Migration[6.1]
  def change
    create_table :departamentos do |t|
      t.string :nome
      t.integer :prioridade
      t.string :local

      t.timestamps
    end
  end
end
