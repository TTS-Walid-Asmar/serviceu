# == Schema Information
#
# Table name: job_lists
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class JobList < ActiveRecord::Base

    belongs_to :user

    has_many :comments, as: :commentable

end
