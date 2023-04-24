class User
  attr_accessor :email, :age
  @@users_id = Array.new

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@users_id << self
  end

  def self.users_id
    return @@users_id
  end

  def self.find_by_email(email_to_find)
    @@users_id.each do |user|
      if user.email == email_to_find
        return "Voici l'age du User trouvé : #{user.age}"
      end
    end
    puts "Nous n'avons pas trouvé de correspondance !"
  end

end