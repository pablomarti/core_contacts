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
class Platform::Contact::Log < ApplicationRecord
  belongs_to :contact
end
