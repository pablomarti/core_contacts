# == Schema Information
# Schema version: 20200813005722
#
# Table name: platform_countries
#
#  id         :uuid             not null, primary key
#  code       :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_platform_countries_on_code  (code) UNIQUE
#
class Platform::Country < ApplicationRecord
  has_many :contacts, dependent: :nullify
end
