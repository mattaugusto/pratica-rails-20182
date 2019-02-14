class MigrarDadosFromPharmacy < ActiveRecord::Migration[5.2]
  def change
    Pharmacy.find_each do |pharmacy|
  		Contact.create(
  			:tipo => 'email',
  			:valor => pharmacy.email,
  			:pharmacy_id => pharmacy.id
  		)

  		Contact.create(
  			:tipo => 'telefone',
  			:valor => pharmacy.telefone,
  			:pharmacy_id => pharmacy.id
  		)
  	end
  end
end
