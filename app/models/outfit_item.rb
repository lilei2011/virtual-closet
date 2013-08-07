class OutfitItem < ActiveRecord::Base
  belongs_to :outfit
  belongs_to :item
  attr_accessible :outfit_id, :item_id
end
