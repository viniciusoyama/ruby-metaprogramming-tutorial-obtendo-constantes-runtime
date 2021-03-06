class BaseBuilder
  def initialize
    @entity = self.class.get_entity_class_name.new
  end

  def get_instance
    @entity
  end

  def self.get_entity_class_name
    builder_class_name = self.to_s
    entity_class_name = builder_class_name.gsub("Builder", "")
    Kernel.const_get(entity_class_name)
  end
end
