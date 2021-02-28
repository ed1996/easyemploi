class CreateEmplois < ActiveRecord::Migration[5.1]
  def change
    create_table :emplois do |t|
      t.string :profession
      t.string :contrat
      t.integer :remuneration
      t.integer :age
      t.string :phone
      t.string :adresse
      t.string :ville
      t.string :transport
      t.string :email
      t.string :name
      t.string :niveau_anglais
      t.string :autre_langue
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
