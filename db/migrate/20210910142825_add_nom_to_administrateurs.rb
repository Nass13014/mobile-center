class AddNomToAdministrateurs < ActiveRecord::Migration[5.2]
  def change
    add_column :administrateurs, :nom, :string
  end
end
