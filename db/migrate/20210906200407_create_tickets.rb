class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :raisonSocial
      t.string :nom
      t.string :prenom
      t.integer :numero
      t.string :mail
      t.string :modele
      t.integer :imei
      t.string :motdepass
      t.string :panne
      t.text :remarque
      t.integer :total
      t.integer :accompte
      t.integer :reduction
      t.string :garantie
      t.string :statut
      t.string :paye

      t.timestamps
    end
  end
end
