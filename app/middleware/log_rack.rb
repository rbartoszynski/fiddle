class LogRack
  def initialize(app)
    @app = app
  end

  def call(env)
    Rails.logger.fatal nicer(env)
    @app.call env
  end

  def nicer hash
    result = ""
    array = hash.map {|k,v| "#{k} => #{v}" }
    array.each do |line|
      result += "#{line}\n"
    end
    result
  end
end