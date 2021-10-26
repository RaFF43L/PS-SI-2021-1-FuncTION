class CreateOrganizacaos < ActiveRecord::Migration[6.1]
  def change
    create_table :organizacaos do |t|
      t.string :nome
      t.string :cnpj, null: false, index: { unique: true }
      t.string :email, null: false, index: { unique: true }
      t.string :fone

      t.timestamps
    end
  end
end
