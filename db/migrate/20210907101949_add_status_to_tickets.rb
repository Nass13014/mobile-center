class AddStatusToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :status, :string
    add_column :tickets, :Paiement, :string

  end
end
