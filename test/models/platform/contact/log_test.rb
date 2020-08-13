# == Schema Information
# Schema version: 20200813010222
#
# Table name: platform_contact_logs
#
#  id         :uuid             not null, primary key
#  comment    :text
#  kind       :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  contact_id :uuid             not null
#
require 'test_helper'

class Platform::Contact::LogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
