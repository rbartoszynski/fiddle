class StupidStrategy < ::Warden::Strategies::Base

  def valid?
    true
  end

  def authenticate!
    success! Superhero.find(1)
  end
end

Warden::Strategies.add(:stupid, StupidStrategy)


