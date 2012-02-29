require 'sinatra'

get '/time' do
  the_current_time = Time.now
  "<h1>" + "The current time is #{the_current_time.strftime("at %I:%M%p")}"+"</h1>"
  the_future_time = Time.now + (60 * 60 * 3)
  "<h1>" + "The future time is #{the_future_time.strftime("at %I:%M%p")}"+"</h1>"
end  

