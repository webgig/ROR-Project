class Item < ActiveRecord::Base
  #attr_accessible :title, :user_id, :url, :price,:cat_id
  validates :title, :length => { :maximum => 100 }
  belongs_to :user
end
