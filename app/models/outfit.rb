class Outfit < ActiveRecord::Base
  has_many :OutfitItems
  has_many :items, through: :OutfitItems
  belongs_to :user
  attr_accessible :name, :user_id
end
