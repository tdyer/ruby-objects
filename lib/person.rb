# A ruby class acts like a template for object.

# I want to create people but I need a "template" for how
# people in my app will behave and what data people have.

# Classes are CamelCased
# class TennisRacket
# end

# filename for classes are snake_cased. Lower case words separted by underscores.
# tennis_racket.rb


class Person
  # automatically generates getter and setter methods
  attr_accessor :first_name, :last_name

  # special method that will be invoked when
  # the Person.new is called.
  def initialize(fname, lname)
    # Add two attribute to Person, first name
    # and last name
    # An instance variable is specific to ONE
    # and ONLY ONE object/instance
    @first_name = fname
    @last_name = lname
  end

  # Create a method that will use the attributes
  # and return a value
  def full_name
    @first_name + " " + @last_name
  end

  # # create a getter method to read the @first_name attribute
  # def first_name
  #   @first_name
  # end


  # def last_name
  #   @last_name
  # end

  # # create a setter method to write the @first_name attribute
  # def first_name=(x)
  #   @first_name = x
  # end

  # # create a setter method to write the @last_name attribute
  # def last_name=(y)
  #   @last_name = y
  # end

end
