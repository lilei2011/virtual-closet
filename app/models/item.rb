class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :outfits, through: :OutfitItems
  has_many :OutfitItems
  attr_accessible :name, :category_id, :user_id, :pic
  has_attached_file :pic
end
