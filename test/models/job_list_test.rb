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

require 'test_helper'

class JobListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
