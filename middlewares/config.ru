
test_app = lambda do |env|
  path   = env['PATH_INFO']
  script = env['SCRIPT_NAME']
  out    = "<strong>Path:</strong>#{path}<br /><strong>Script:</strong>#{script}"
  return [200, {"Content-Type" => "text/html"}, [out]]
end

# use Rack::Reloader
# use Rack::ShowExceptions

run test_app
