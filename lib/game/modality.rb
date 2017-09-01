#!/lib/modality.rb

class Modality

  require './game/init_classes.rb'

  def initialize(rules)
    @mode = InitClasses::Shapes.new(rules)
  end
end
