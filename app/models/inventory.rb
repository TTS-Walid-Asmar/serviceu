class Inventory < ActiveRecord::Base

  belongs_to :user

    attachment :item_image

  belongs_to :category

  has_many :comments, as: :commentable

end
