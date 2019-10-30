class Puppy

  attr_accessor :name, :months_old, :breed

  def initialize(name:, breed:, months_old:)
    @name = name
    @breed = breed
    @months_old = months_old
  end

end