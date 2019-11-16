class Application

    def call(env)
        resp = Rack::Response.new

        current_time = Time.now
        change_time = Time.parse "12:00 pm"

        if current_time < change_time
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end