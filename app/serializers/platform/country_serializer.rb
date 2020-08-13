class Platform::CountrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :code, :name, :created_at, :updated_at
end
