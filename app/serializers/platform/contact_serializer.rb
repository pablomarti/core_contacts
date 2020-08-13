class Platform::ContactSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :mobile, :email, :birth_date, :status
  belongs_to :country
  has_many :logs, serializer: Platform::Contact::LogSerializer
end
