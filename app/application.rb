class Application

  def call(env)
    res = Rack::Response.new
    time = Time.now

    if time.hour < 12
      res.write "Good Morning!"
    else
      res.write "Good Afternoon!"
    end

    res.finish

  end

end
