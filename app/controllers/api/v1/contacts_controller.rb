class Api::V1::ContactsController < Api::V1::BaseController
  protected

  def resources_data
    resource_serializer_class.new(@resources, { include: %i[logs] })
  end

  def resource_serializer_class
    Platform::ContactSerializer
  end

  def resource_scope
    Platform::Contact.active_contacts
  end
end
