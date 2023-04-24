require 'time'

class Event

  attr_accessor :start_date, :duration, :title, :attendees
  
  def initialize (start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = start_date_to_save
    @start_date = Time.parse(@start_date)
    @duration = (duration_to_save * 60)
    @title = title_to_save
    @attendees = Array.new
    @attendees = attendees_to_save
  end

  # Pour décaler un évènement de 24h.
  def postpone_24h
    @start_date = @start_date + (24 * 60 * 60)
  end

  # pour connaître la date de fin d'un évènement.
  def end_date
    return "La date de fin de l'évènement est le #{start_date + duration}."
  end

  # Pour vérifier si l'évènement a déjà eu lieu.
  def is_past?
    return start_date < Time.now
  end

  # Pour vérifier si l'évènement aura lieu dans le futur.
  def is_futur?
    return !self.is_past?
  end

  # Pour vérifier si l'évènement lieu dans moins de 30 minutes.
  def is_soon?
    return (start_date > Time.now) && (start_date < Time.now + (30 * 60)) 
  end

  # Pour mettre les choses de façon très très joli !
  def to_s
    puts "Titre : #{title}"
    puts "Date de début : #{start_date.strftime("%d/%m/%Y %H:%M")}"
    puts "Durée : #{duration / 60} minutes"
    puts "Invités :#{attendees. join(", ")}"
  end

end