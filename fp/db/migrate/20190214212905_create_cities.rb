class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :nome
      t.string :ibge

      t.timestamps
    end
    change_table :pharmacies do |t|
      t.references :cities, foreign_key: true
    end
  end
end
