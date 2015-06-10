class Category < ActiveRecord::Base
    has_many :inventories

#    def to_param
#        "#{self.id}_#{self.name}"
#    end
end
