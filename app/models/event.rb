# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  description    :text
#  cost           :integer
#  where          :text
#  title          :string
#  start_time     :datetime
#  end_time       :datetime
#  start_day      :date
#  end_day        :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  event_image_id :string
#

class Event < ActiveRecord::Base

    attachment :event_image


    belongs_to :user

    has_many :comments, as: :commentable
end
