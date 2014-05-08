require "rack"

class MyCoolApplication
  def call(env)
    req = Rack::Request.new(env)
    name = req.params['name']
    text = req.params['text']

    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      res.write "Parameters: name - #{name} | text - #{text}"
    end
  end
end

Rack::Handler::WEBrick.run MyCoolApplication.new
