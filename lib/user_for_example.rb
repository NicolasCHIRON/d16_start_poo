require 'pry'

class User
  attr_writer :mastercard # à mettre en en-tête de la classe // permet de modifier la variable d'instance sans avoir à coder une méthode mais ne permet pas de l'appeler avec .variable
  attr_reader :birthdate # permet de lire la variable d'instance simplement mais sans pouvoir la modifier facilement
  attr_accessor :email #combien les deux : permet d'accéder en lecture ET en écriture aux variables d'instance
  @@user_count = 0 # variable de classe (avec les @@), dans ce cas on initialise la variable de classe qui sera un compteur du nombre d'instance

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1
    puts "On envoie un message de bienvenue !!"
  end
  
  def self.count # pour une méthode de classe on utiliser self. avant le nom de la méthode
    return @@user_count
  end

  def 
  def greet
    puts "Bonjour, monde !"
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name}"
  end

  def show_itself
    print "Voici l'instance : "
    puts self
  end

  # def update_email(email_to_update)
  #   @email = email_to_update
  # end

  # def read_email
  #   return @email
  # end

  # def read_mastercard
  #   return @mastercard
  # end

  # def update_birthdate(birthdate_to_update)
  #   @birthdate = birthdate_to_update
  # end

  private #A partir de là toutes les méthodes écrites dans la classe deviennent privés et ne peuvent être appelés quand depuis le code de la classe.


end

binding.pry
puts "end of file"