class Contact < ApplicationRecord
  belongs_to :pharmacy

  validates :tipo, presence: true, inclusion: {in: %w(email telefone)}
	validates :valor, presence: true
end
