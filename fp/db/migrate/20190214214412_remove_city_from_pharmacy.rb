class RemoveCityFromPharmacy < ActiveRecord::Migration[5.2]
  def change
    remove_column :pharmacies, :cidade, :string
    remove_column :pharmacies, :ibge, :string
  end
end
