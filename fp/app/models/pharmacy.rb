class Pharmacy < ApplicationRecord
  has_many :contacts
  belongs_to :cities
  accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: true

  validates :ibge, presence: true
	validates :uf, presence: true
	validates :cidade, presence: true
	validates :nome, presence: true
	validates :endereco, presence: true
	validates :bairro, presence: true
	validates :cep, presence: true
	validates :ddd, presence: true
	validates :cnpj_farmacia, presence: true
	validates :cnpj_matriz, presence: true
	validates :ano, presence: true
	validates :mes, presence: true
end
