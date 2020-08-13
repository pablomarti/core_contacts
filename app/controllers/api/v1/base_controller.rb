class Api::V1::BaseController < Api::V1Controller
  before_action :set_resource, only: %i[show update destroy]

  def index
    @resources = resource_scope

    render json: resources_data
  end

  def show
    render json: resource_data
  end

  def create
    @resource = resource_scope.new(resource_params)
    return render json: resource_serializer, status: :created, location: @resource if @resource.save

    render json: @resource.errors, status: :unprocessable_entity
  end

  def update
    return show if @resource.update(resource_params)

    render json: @resource.errors, status: :unprocessable_entity
  end

  def destroy
    @resource.destroy
    show
  end

  protected

  def resource_data
    resource_serializer_class.new(@resource)
  end

  def resources_data
    resource_serializer_class.new(@resources)
  end

  def resource_serializer_class
    raise NoMethodError
  end

  def resource_scope
    raise NoMethodError
  end

  def resource_params
    {}
  end

  private

  def set_resource
    @resource = resource_scope.find(params[:id])
  end
end
