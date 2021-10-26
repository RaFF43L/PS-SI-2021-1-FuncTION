class CreateCategoria < ActiveRecord::Migration[6.1]
  def change
    create_table :categoria do |t|
      t.string :nome
      t.integer :prioridade

      t.timestamps
    end
    
  end
end
