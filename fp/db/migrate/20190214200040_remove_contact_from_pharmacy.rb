class RemoveContactFromPharmacy < ActiveRecord::Migration[5.2]
  def change
    remove_column :pharmacies, :email, :string
    remove_column :pharmacies, :telefone, :string
  end
end
