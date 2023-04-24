require 'time'
require 'pry'
require_relative 'user'
require_relative 'event'

class EventCreator

  attr_accessor :start_date, :duration, :title, :attendees
  
  def initialize
    puts "Salut, tu veux créer un évènement ? Cool !"
    puts "Commençons, Quel est le nom de l'évènement ?"
    print "> "
    @title = gets.chomp

    puts "Super. Quand aura-t-il lieu ?"
    print "> "
    @start_date = gets.chomp

    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    @duration = gets.chomp

    puts "Génial. Qui va participer ? Balance leurs e-mails (séparer les mails par des espaces) :"
    print "> "
    @attendees = gets.chomp.split.join (", ")

    event_1 = Event.new(@start_date, @duration, @title, @attendees)
    puts
    puts "Super, c'est noté, ton évènement a été créé, voici le récapitulatif :"
    puts
    return event_1.to_s
  end

end
# binding.pry
# puts "end of file"