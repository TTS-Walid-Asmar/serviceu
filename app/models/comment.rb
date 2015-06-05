class Comment < ActiveRecord::Base
  belongs_to :user

  belongs_to :job_list

    belongs_to :event
end
