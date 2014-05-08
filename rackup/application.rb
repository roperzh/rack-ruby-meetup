class MyCoolApplication
  def call(env)

    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      res.status = 200
      res.write "Hello rackup!"
    end
  end
end
