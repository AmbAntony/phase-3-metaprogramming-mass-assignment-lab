require 'pry'
class Person
  def initialize(attributes)
    attributes.each do |key, value|
      # create a getter and setter by calling the attr_accessor method
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

bob_attributes = { name: "Bob", hair_color: "Brown" }
bob = Person.new(bob_attributes)

binding.pry

