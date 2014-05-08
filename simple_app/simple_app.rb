# A single-line rack application

simple_app = ->(env) { [ 200, {}, ["Hello, rack!"] ] }

simple_app.call({}) #=> Hello, rack!
