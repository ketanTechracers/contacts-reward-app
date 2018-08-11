class Contact < ApplicationRecord

  validates :name,  :presence => true
  validates :contact_number,  :presence => true

  has_many :purchases
end
