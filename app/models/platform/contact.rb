# == Schema Information
# Schema version: 20200813010222
#
# Table name: platform_contacts
#
#  id         :uuid             not null, primary key
#  birth_date :datetime
#  email      :string           default("")
#  first_name :string           default("")
#  last_name  :string           default("")
#  mobile     :string           default("")
#  status     :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :uuid             not null
#
class Platform::Contact < ApplicationRecord
  belongs_to :country
  has_many :logs, dependent: :destroy

  enum status: %i[pending rejected approved banned archived]

  scope :active_contacts, -> { where.not(status: :archived) }
end
