class AddAttributesUser < ActiveRecord::Migration[6.1]
  def change
    change_table(:usuarios) do |t|
      t.column :funcao, :string
      t.column :nome, :string
      t.column :role, :string
      t.belongs_to :departamento, index: true
      t.belongs_to :organizacao, index: true
    end
  end
end
