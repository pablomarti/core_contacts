class Platform::Contact::LogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :comment, :kind, :created_at, :updated_at
end
