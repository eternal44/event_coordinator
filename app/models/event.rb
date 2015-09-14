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

class Event < ActiveRecord::Base
  belongs_to :account
end
