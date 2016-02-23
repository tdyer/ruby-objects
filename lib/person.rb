require 'date'

# template to create people
class Person

  # CLASS VARIABLES
  # VARIABLES THAT ARE SHARED BY ALL OBJECTS OF THIS CLASS.
  @@count = 0



  # shortcut for gettter and setters
  # attr_*

  # create a getter for first_name instance variable
  attr_reader :first_name, :dob

  # create a setter for the last_name instance variable
  attr_writer :last_name

  # create a initialize method to give people first and
  # last names.
  # dob_str - "5-13-1993" format is m-d-Y
  def initialize(fname, lname, dob_str)
    # create a instance variable for the first name
    @first_name = fname
    @last_name = lname

    # Convert the formatted date String to a
    # Ruby Date object
    @dob = Date.strptime(dob_str, '%m-%d-%Y')

    @years_to_live = 79 - age

    # Increment the value for the class variable, @@count,
    # every time a person object is created.
    @@count = @@count + 1
  end

  # CLASS METHOD
  # ALLOWS you to access class variables.
  # Person.num_people
  def Person.num_people
    @@count
  end

   # calculate the age from dob
  def age
    now = Date.today
    now_month_day = now.strftime('%m%d')
    dob_month_day = dob.strftime('%m%d')

    years_to_subtract = 0
    if now_month_day < dob_month_day
      years_to_subtract = 1
    end

    # 2016 - 1993 = 23
    # today < bday 23 - 1 = 22
    now.year - dob.year - years_to_subtract

    #  now.year - dob.year - (now.strftime('%m%d') < dob.strftime('%m%d') ? 1 : 0)
  end



  def give_insurance?
    # Huh? What is this bang, bang?
    !!(years_to_live > 20)
  end



  # Create a method that will show the full name of the person
  def full_name
    "#{@first_name} #{@last_name}"
  end

  def display
    # call the full_name method then call the age method
    # PREFER TO CALL THE METHOD instead of the instance variable
    "#{full_name}'s age is #{age}"

    # call the full_name method then get the value of the age
    # instance variable
    #"#{full_name}'s age is #{@age}"

  end

  private
  # Any mehthod from private to the end keyword can ONLY
  # be called in other method.
  # They can't be called by clients, code using people objects.
  # Get the expected death year for person
  def expected_death_year
    Date.today.year + @years_to_live
  end

   def years_to_live
    @years_to_live = expected_death_year - Date.today.year
  end


end
