require "rack"
require "json"

simple_app = ->(env) { [ 200, {}, ["Hello, rack!"] ] }

json_app   = ->(env) {
  [
    200,                                       # Status

    { "content_type" => "application/json" },  # Headers

    [ { "Hello, rack!" => "hi" }.to_json ]     # Body
  ]
}

Rack::Handler::WEBrick.run simple_app
# Rack::Handler::WEBrick.run json_app
