# lib/shapes.rb

class Shapes

  def initialize(rules_hash)
    values = init_classes(rules_hash)
    keys = keys_generator(values)
    @shapes = keys.zip(values).to_h
  end

  private
  def launch_class(klass_name)
    Object.const_set(klass_name.capitalize, Class.new)
  end

  def launch_class_method(klass_name, winning_shapes)
    klass_name.define_singleton_method(:vs) do |vs_shape|
      if vs_shape == self
        "tie"
      elsif winning_shapes.include?(:"#{vs_shape}".downcase)
        "lose"
      else
        "win"
      end
    end
  end

  def init_classes(rules_hash)
    klasses = []
    rules_hash.each do |klass_name, win_shapes|
      klasses << klass = launch_class(klass_name)
      launch_class_method(klass, win_shapes)
    end
    klasses
  end

  def keys_generator(values)
    keys = []
    values.each {|v| keys << "#{v}".downcase}
    keys
  end
end
