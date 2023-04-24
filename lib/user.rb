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

  def self.find_by_email(email)
    where("email = ?", params["user"]["email"]).first
  end

end


# vérifier si un mail correspondant à une entrée dans le tableau
# si oui faire correspondre le mail à l'utilisateur concerné
