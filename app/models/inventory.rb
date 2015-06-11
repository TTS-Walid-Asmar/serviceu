class Inventory < ActiveRecord::Base

  belongs_to :user

    attachment :item_image

  has_many :comments, as: :commentable

end
