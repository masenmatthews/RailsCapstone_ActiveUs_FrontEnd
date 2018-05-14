class Organization < ApplicationRecord
  belongs_to :user
  validates :name, :category, :description, :address, :phone, :email, :presence => true

end
