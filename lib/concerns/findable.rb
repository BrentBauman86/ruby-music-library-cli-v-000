module Concerns::Findable

  def find_by_name(name)
    all.detect{|a| a.name == name}
  end

  def find_or_create_by_name(name)
<<<<<<< HEAD
  if find_by_name(name)
        find_by_name(name)
=======
  if find_this = find_by_name(name)
        find_this
>>>>>>> 77f46f11ea84df04b856859ece25575b4eb31324
    else
      create(name)
    end
  end
end
