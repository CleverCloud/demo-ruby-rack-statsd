require 'statsd-instrument'
class HelloWorld
  def call(env)
     StatsD.increment('helloItsMe')
     [200, {"Content-Type" => "text/plain"}, ["Hello world!"]]
  end
end