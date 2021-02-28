class Emploi < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :profession, presence: true
  validates :remuneration, numericality: {only_integer: true}
end
