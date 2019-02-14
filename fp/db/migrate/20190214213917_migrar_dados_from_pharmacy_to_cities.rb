class MigrarDadosFromPharmacyToCities < ActiveRecord::Migration[5.2]
  def change
    Pharmacy.find_each do |pharmacy|
  		city = City.new
      city.nome = pharmacy.cidade
      city.ibge = pharmacy.ibge
      city.save

      pharmacy.cities_id = city.id
    end
  end
end
