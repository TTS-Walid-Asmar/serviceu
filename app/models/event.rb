# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  description :text
#  cost        :integer
#  where       :text
#  title       :string
#  start_time  :datetime
#  end_time    :datetime
#  start_day   :date
#  end_day     :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Event < ActiveRecord::Base

    belongs_to :user

end
