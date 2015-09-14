# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  location   :string
#  time       :datetime
#  event_name :string
#  account_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
