class InsuredPerson < Person

  attr_accessor :account_id

  def display
    "#{full_name} account id is #{account_id}"
  end

end
