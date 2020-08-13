class Api::V1::CountriesController < Api::V1::BaseController
  protected

  def resource_serializer_class
    Platform::CountrySerializer
  end

  def resource_scope
    Platform::Country.all
  end
end
