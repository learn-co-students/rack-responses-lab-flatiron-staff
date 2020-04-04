class Application

	def call(env)
		resp = Rack::Response.new

		greet = (Time.now.hour) < 12 ? "Good Morning!" : "Good Afternoon!"


		resp.write greet

		resp.finish
	end
end