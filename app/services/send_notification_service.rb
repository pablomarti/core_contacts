class SendNotificationService
  attr_reader :entity, :topic

  def initialize(entity, topic)
    @entity = entity
    @topic = topic
  end

  def call
    $kafka_producer.produce(entity.to_json, topic: topic, partition_key: entity.id)
  end
end
